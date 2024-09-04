<?php

declare(strict_types=1);

/**
 * This code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/codegen/codegen.rb]
 */

namespace Cucumber\Messages;

use JsonSerializable;
use Cucumber\Messages\DecodingException\SchemaViolationException;

/**
 * Represents the Ci message in Cucumber's message protocol
 * @see https://github.com/cucumber/messages
 *
 * CI environment */
final class Ci implements JsonSerializable
{
    use JsonEncodingTrait;

    /**
     * Construct the Ci with all properties
     *
     */
    public function __construct(

        /**
         * Name of the CI product, e.g. "Jenkins", "CircleCI" etc.
         */
        public readonly string $name = '',

        /**
         * Link to the build
         */
        public readonly ?string $url = null,

        /**
         * The build number. Some CI servers use non-numeric build numbers, which is why this is a string
         */
        public readonly ?string $buildNumber = null,
        public readonly ?Git $git = null,
    ) {
    }

    /**
     * @throws SchemaViolationException
     *
     * @internal
     */
    public static function fromArray(array $arr): self
    {
        self::ensureName($arr);
        self::ensureUrl($arr);
        self::ensureBuildNumber($arr);
        self::ensureGit($arr);

        return new self(
            (string) $arr['name'],
            isset($arr['url']) ? (string) $arr['url'] : null,
            isset($arr['buildNumber']) ? (string) $arr['buildNumber'] : null,
            isset($arr['git']) ? Git::fromArray($arr['git']) : null,
        );
    }

    /**
     * @psalm-assert array{name: string|int|bool} $arr
     */
    private static function ensureName(array $arr): void
    {
        if (!array_key_exists('name', $arr)) {
            throw new SchemaViolationException('Property \'name\' is required but was not found');
        }
        if (array_key_exists('name', $arr) && is_array($arr['name'])) {
            throw new SchemaViolationException('Property \'name\' was array');
        }
    }

    /**
     * @psalm-assert array{url?: string|int|bool} $arr
     */
    private static function ensureUrl(array $arr): void
    {
        if (array_key_exists('url', $arr) && is_array($arr['url'])) {
            throw new SchemaViolationException('Property \'url\' was array');
        }
    }

    /**
     * @psalm-assert array{buildNumber?: string|int|bool} $arr
     */
    private static function ensureBuildNumber(array $arr): void
    {
        if (array_key_exists('buildNumber', $arr) && is_array($arr['buildNumber'])) {
            throw new SchemaViolationException('Property \'buildNumber\' was array');
        }
    }

    /**
     * @psalm-assert array{git?: array} $arr
     */
    private static function ensureGit(array $arr): void
    {
        if (array_key_exists('git', $arr) && !is_array($arr['git'])) {
            throw new SchemaViolationException('Property \'git\' was not array');
        }
    }
}
