<?php

declare(strict_types=1);

/**
 * This code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/codegen/codegen.rb]
 */

namespace Cucumber\Messages;

use JsonSerializable;
use Cucumber\Messages\DecodingException\SchemaViolationException;

/**
 * Represents the PickleTable message in Cucumber's message protocol
 * @see https://github.com/cucumber/messages
 *
 */
final class PickleTable implements JsonSerializable
{
    use JsonEncodingTrait;

    /**
     * Construct the PickleTable with all properties
     *
     * @param list<PickleTableRow> $rows
     */
    public function __construct(
        public readonly array $rows = [],
    ) {
    }

    /**
     * @throws SchemaViolationException
     *
     * @internal
     */
    public static function fromArray(array $arr): self
    {
        self::ensureRows($arr);

        return new self(
            array_values(array_map(fn (array $member) => PickleTableRow::fromArray($member), $arr['rows'])),
        );
    }

    /**
     * @psalm-assert array{rows: array} $arr
     */
    private static function ensureRows(array $arr): void
    {
        if (!array_key_exists('rows', $arr)) {
            throw new SchemaViolationException('Property \'rows\' is required but was not found');
        }
        if (array_key_exists('rows', $arr) && !is_array($arr['rows'])) {
            throw new SchemaViolationException('Property \'rows\' was not array');
        }
    }
}
