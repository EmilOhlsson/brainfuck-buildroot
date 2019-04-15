################################################################################
#
# Brainfuck driver
#
################################################################################

BRAINFUCK_DRIVER_VERSION = v0.0.1
BRAINFUCK_DRIVER_SITE = https://github.com/EmilOhlsson/brainfuck-driver.git
BRAINFUCK_DRIVER_SITE_METHOD = git

$(eval $(kernel-module))
$(eval $(generic-package))
