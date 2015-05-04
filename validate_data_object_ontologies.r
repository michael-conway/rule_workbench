
validateDataObjectOntologies {

#Compare the metadata attributes on the collection with value "null" with the attributes on the files in the collection

#List all missing metadata on the files in the collection

  *Coll= "/$rodsZoneClient/home/$userNameClient" ++ "%";

  *Q1 = select COLL_NAME where COLL_NAME like '*Coll';

#Loop over collections

  foreach(*R1 in *Q1) {

    *C = *R1.COLL_NAME;

    *Q2 = select order_asc(META_COLL_ATTR_NAME) where COLL_NAME = '*C' and META_COLL_ATTR_UNIT = 'iRODSUserTagging:HIVE:VocabularyTerm';

    foreach (*R3 in *Q3) {

   	*File = *R3.DATA_NAME;

        *Q4 = select order_asc(META_DATA_ATTR_NAME) where COLL_NAME = '*C' and DATA_NAME = '*File' and META_DATA_ATTR_UNITS ='iRODSUserTagging:HIVE:VocabularyTerm';

        foreach(*R4 in *Q4) {

      	  *Name = *R4.META_DATA_ATTR_NAME;

          writeLine("stdout","*C/*File has *R4");
        }

    }

 }

}

INPUT null

OUTPUT ruleExecOut

