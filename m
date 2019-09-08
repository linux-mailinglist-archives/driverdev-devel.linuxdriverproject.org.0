Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA3FACF5E
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 16:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8432284FD5;
	Sun,  8 Sep 2019 14:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMn5GakJ0YGn; Sun,  8 Sep 2019 14:47:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C428A84FFF;
	Sun,  8 Sep 2019 14:47:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D62521BF409
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 14:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1EF4203B2
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 14:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xg3-kookNPj4 for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 14:47:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by silver.osuosl.org (Postfix) with ESMTPS id EC78720022
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 14:47:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 7B1A3214; Sun,  8 Sep 2019 14:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567954055;
 bh=iMps8Hv8V4ycg9xT22lBI+Z06VFOIDLw6qNSazuJrT0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cx4tVznfdjeZdz28aPWZ3k9UBKvN6GBRXxF72OBawL83EUURclkIuwlD3DK+vphOz
 wHMUZAMncttgL5exHo3NW72E7kQLhRTz1J3VKSzVlImZoxrTPPQbZQIWyx+RYkbE0/
 NkbYoTewDhJxhrK24z4LSw5Acfy8eVJxx2ls8BI75hFXThx16wGvJIBNSC/9AaQ42S
 WG5DM4+VvzMeFFlzFoG6NVUbbIhnSGeC2UetULCFalu1EiUvom496NV2hMEfLDvJf9
 yIMUBUV35FvlWxPu7iH/P8QyJWDrvDcfUyzj2pVBiqShavMUPlanMw06M5iTGPT8le
 1ckjQN4qs2a6A==
Date: Sun, 8 Sep 2019 14:47:35 +0000
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add millisecond support
Message-ID: <20190908144735.GA7664@valentin-vidic.from.hr>
References: <20190908124808.23739-1-vvidic@valentin-vidic.from.hr>
 <20190908130337.GA9056@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908130337.GA9056@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 02:03:37PM +0100, Greg Kroah-Hartman wrote:
> Please run checkpatch on your patches so that we don't have to go and
> fix up those issues later on.

Strange, it did not report anything for me:

total: 0 errors, 0 warnings, 0 checks, 439 lines checked
0001-staging-exfat-add-millisecond-support.patch has no obvious style problems and is ready for submission.

> Also, can you break this up into smaller patches please?  You are doing
> multiple things all at once.

Sure, I was just trying to improve the code a bit :)

> And, are you sure about the millisecond field for access time stuff?  It
> was obviously added for some reason (there are lots in the spec that the
> code does not yet cover, this seems odd being the other way around).
> Did you test it against any other operating system exfat images to
> ensure that it really is not being used at all?  If so, which ones?

Don't really have access to another OS, but here is what exfat-fuse has:

struct exfat_entry_meta1                        /* file or directory info (part 1) */
{
        uint8_t type;                                   /* EXFAT_ENTRY_FILE */
        uint8_t continuations;
        le16_t checksum;
        le16_t attrib;                                  /* combination of EXFAT_ATTRIB_xxx */
        le16_t __unknown1;
        le16_t crtime, crdate;                  /* creation date and time */
        le16_t mtime, mdate;                    /* latest modification date and time */
        le16_t atime, adate;                    /* latest access date and time */
        uint8_t crtime_cs;                              /* creation time in cs (centiseconds) */
        uint8_t mtime_cs;                               /* latest modification time in cs */
        uint8_t __unknown2[10];
}

The spec matches this and defines 3 additional UtcOffset fields that we don't use:

EntryType
SecondaryCount
SetChecksum
FileAttributes
Reserved1
CreateTimestamp
LastModifiedTimestamp
LastAccessedTimestamp
Create10msIncrement
LastModified10msIncrement

CreateUtcOffset (1 byte)
LastModifiedUtcOffset (1 byte)
LastAccessedUtcOffset (1 byte)
Reserved2 (7 bytes)

So I'm not sure where access_time_ms came from. In any case it was always set to
0 so it should not matter much?

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
