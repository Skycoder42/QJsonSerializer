TEMPLATE = subdirs

SUBDIRS += \
	TypeConverterTestLib \
	SerializerTest

CONVERTER_TESTS = \
#	BytearrayConverterTest \
	ChronoDurationConverterTest \
	EnumConverterTest \
#	GadgetConverterTest \
#	GeomConverterTest \
#	JsonConverterTest \
	ListConverterTest \
#	LocaleConverterTest \
#	MapConverterTest \
	ObjectConverterTest \
#	PairConverterTest \
#	RegexConverterTest \
#	TupleConverterTest \
#	VersionConverterTest \
#	MultiMapConverterTest \
#	OptionalConverterTest \
#	VariantConverterTest

for(test, CONVERTER_TESTS) {
	SUBDIRS += $$test
	$${test}.depends += TypeConverterTestLib
}

prepareRecursiveTarget(run-tests)
QMAKE_EXTRA_TARGETS += run-tests
