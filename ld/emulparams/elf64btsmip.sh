# If you change this file, please also look at files which source this one:
# elf64ltsmip.sh

. ${srcdir}/emulparams/elf32bmipn32-defs.sh
OUTPUT_FORMAT="elf64-tradbigmips"
BIG_OUTPUT_FORMAT="elf64-tradbigmips"
LITTLE_OUTPUT_FORMAT="elf64-tradlittlemips"

# Magic sections.
INITIAL_READONLY_SECTIONS='.MIPS.options : { *(.MIPS.options) }'
OTHER_TEXT_SECTIONS='*(.mips16.fn.*) *(.mips16.call.*)'
OTHER_SECTIONS='
  .gptab.sdata : { *(.gptab.data) *(.gptab.sdata) }
  .gptab.sbss : { *(.gptab.bss) *(.gptab.sbss) }
'

TEXT_DYNAMIC=
