Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE381AB6C
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 11:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58979858B5;
	Sun, 12 May 2019 09:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHnfU24kv6sq; Sun, 12 May 2019 09:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEC868545F;
	Sun, 12 May 2019 09:11:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C0AA1BF2BD
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 09:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08967221A9
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 09:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izpYNGzVJHye for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 09:11:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DF2722836
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 09:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 May 2019 02:11:12 -0700
X-ExtLoop1: 1
Received: from kohsamui.iil.intel.com (HELO [10.236.193.12]) ([10.236.193.12])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2019 02:11:12 -0700
To: Laura Abbott <labbott@redhat.com>, Greg KH <gregkh@linuxfoundation.org>
From: Alexey Skidanov <alexey.skidanov@intel.com>
Subject: ION doesn't set the cache attributes according to ION_FLAG_CACHED
 buffer flag
Message-ID: <bdda9cc6-270e-bcb3-3fdc-e2efb66aa6e9@intel.com>
Date: Sun, 12 May 2019 12:13:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Mapping the buffer to user space, ION failed to set the cache attributes
according to ION_FLAG_CACHED flag on x86.

When the reserved memory (reserved by memmap= kernel boot option) or
part of it is mapped to the user space, the user space memory mapping is
always *uncachable*.

ION uses remap_pfn_range to create the mapping. On x86 arch, the actual
cache attributes may be different from the requested ones due to the PAT
implementation. When we map the PFNs one by one to some VMA, the cache
attributes are set by lookup_memtype, completely ignoring the cache
attributes of VMA. For example:
- if the requested memory region is managed by the OS (has struct page
object), the actual cache attribute is set based on struct page cache
attributes saved in its flag member
- if the memory region is not managed by the OS (there are no struct
page object), the PAT internal RBT of memory types is scanned. If RBT
defines the memory type for the requested PFN, this memory type is used,
otherwise the PFN is mapped as uncachable.

Is it x86 specific issue?

I have implemented and tested the fix for this issue, but it looks like
it should be submitted to the PAT.

Thanks,
Alexey
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
