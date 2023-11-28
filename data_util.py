"""
Utility functions for working with SynPUF data.
"""


import pandas as pd
import os


def irange(i, j):
    """Inclusive range function with 1-based indexing to make data type code more readable."""
    return range(i-1, j)  


class DataLoader():
    """Class for loading SynPUF Data Frames from gzipped CSV files."""
    
    # Common options for pd.read_csv
    read_csv_opts = {'header': 0, 'engine': 'c', 'compression': 'infer'}
    
    def __init__(self, data_dir='../Assignment 5/synpufs'):
        self.data_dir = data_dir
        self._init_dtypes()
        
    def load_beneficiaries_year(self, year, filetemplate='Beneficiary_Summary_{}.csv.gz'):
        """Load beneficiary data for a given year, using a filename template."""
        return self.load_beneficiaries(filetemplate.format(year))
        
    def load_beneficiaries(self, file):
        """Load beneficiary data."""
        file = self._resolve_path(file)
        return pd.read_csv(file, dtype=self.beneficiary_dtypes, **self.read_csv_opts)
        
    def load_inpatient_claims(self, file='Inpatient_Claims_2008_to_2010.csv.gz'):
        """Load inpatient claims data."""
        file = self._resolve_path(file)
        claims = pd.read_csv(file, dtype=self.inpatient_claims_dtypes, **self.read_csv_opts)
        claims = claims[claims['SEGMENT'] == 1]  # Discard second claim segments
        return claims
    
    def load_outpatient_claims(self, file='Outpatient_Claims_2008_to_2010.csv.gz'):
        """Load outpatient claims data."""
        file = self._resolve_path(file)
        claims = pd.read_csv(file, dtype=self.outpatient_claims_dtypes, **self.read_csv_opts)
        claims = claims[claims['SEGMENT'] == 1]  # Discard second claim segments
        return claims
        
    def load_carrier_claims(self, files=['Carrier_Claims_segA_2008_to_2010.csv.gz', 'Carrier_Claims_segB_2008_to_2010.csv.gz']):
        """Load carrier claims data and merge the separate files for ease of use."""
        files = [self._resolve_path(f) for f in files]
        return pd.concat([pd.read_csv(f, dtype=self.carrier_claims_dtypes, **self.read_csv_opts) for f in files])
    
    def load_prescription_drug_events(self, file='Prescription_Drug_Events_2008_to_2010.csv.gz'):
        """Load prescription drug event data."""
        file = self._resolve_path(file)
        return pd.read_csv(file, dtype=self.presc_drug_event_dtypes, **self.read_csv_opts)
    
    def _resolve_path(self, f):
        return os.path.abspath(os.path.join(self.data_dir, f))
        
    def _init_dtypes(self):
        """Initialize data type dictionaries for all SynPUF files.
        Refer to data set documentation: https://www.cms.gov/files/document/de-10-codebook.pdf-0
        """
        self.beneficiary_dtypes = {}
        for i in [*irange(1, 1), *irange(6, 8)]:
            self.beneficiary_dtypes[i] = str
        for i in [*irange(2, 5), *irange(9, 23)]:
            self.beneficiary_dtypes[i] = 'Int64'  # Capital I is needed to support NaN values
        for i in irange(24, 32):
            self.beneficiary_dtypes[i] = 'float64'
        
        self.carrier_claims_dtypes = {}
        for i in [*irange(1, 2), *irange(5, 51), *irange(117, 142)]:
            self.carrier_claims_dtypes[i] = str
        for i in irange(3, 4):
            self.carrier_claims_dtypes[i] = 'Int64'  # Capital I is needed to support NaN values
        for i in irange(52, 116):
            self.carrier_claims_dtypes[i] = 'float64'
            
        self.outpatient_claims_dtypes = {}
        for i in [*irange(1, 2), *irange(6, 6), *irange(9, 11), *irange(13, 28), *irange(31, 76)]:
            self.outpatient_claims_dtypes[i] = str
        for i in irange(3, 5):
            self.outpatient_claims_dtypes[i] = 'Int64'  # Capital I is needed to support NaN values
        for i in [*irange(7, 8), *irange(12, 12), *irange(29, 30)]:
            self.outpatient_claims_dtypes[i] = 'float64'
            
        self.inpatient_claims_dtypes = {}
        for i in [*irange(1, 2), *irange(6, 6), *irange(9, 11), *irange(13, 13), *irange(20, 81)]:
            self.inpatient_claims_dtypes[i] = str
        for i in [*irange(3, 5), *irange(12, 12), *irange(19, 19)]:
            self.inpatient_claims_dtypes[i] = 'Int64'  # Capital I is needed to support NaN values
        for i in [*irange(7, 8), *irange(14, 18)]:
            self.inpatient_claims_dtypes[i] = 'float64'
            
        self.presc_drug_event_dtypes = {}
        for i in [*irange(1, 2), *irange(4, 4)]:
            self.presc_drug_event_dtypes[i] = str
        for i in irange(3, 3):
            self.presc_drug_event_dtypes[i] = 'Int64'  # Capital I is needed to support NaN values
        for i in irange(5, 8):
            self.presc_drug_event_dtypes[i] = 'float64'
