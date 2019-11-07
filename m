Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2974CF2A47
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 10:10:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 092B685F8D;
	Thu,  7 Nov 2019 09:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIuqa1EBTFtC; Thu,  7 Nov 2019 09:10:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D86D985C57;
	Thu,  7 Nov 2019 09:10:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5B01BF2E4
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 542DA85B95
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pr1WiQ1avkHp for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 09:10:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org
 [213.251.177.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2879685C57
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 09:10:43 +0000 (UTC)
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSdoJ-0002WC-Ai; Thu, 07 Nov 2019 10:10:35 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: RE: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 10:19:56 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
 <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
 <DM5PR21MB013730D09CB8BA7658DE57F7D7790@DM5PR21MB0137.namprd21.prod.outlook.com>
Message-ID: <c8403255bf874856c10f07189e27080a@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mikelley@microsoft.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 devel@linuxdriverproject.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com, sunilmut@microsoft.com, boqun.feng@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
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
Cc: mark.rutland@arm.com, linux-hyperv@vger.kernel.org,
 "boqun.feng" <boqun.feng@gmail.com>, catalin.marinas@arm.com,
 jasowang@redhat.com, linux-kernel@vger.kernel.org, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh@linuxfoundation.org, apw@canonical.com,
 devel@linuxdriverproject.org, vkuznets <vkuznets@redhat.com>, will@kernel.org,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019-11-06 19:08, Michael Kelley wrote:
> From: Marc Zyngier <maz@kernel.org>  Sent: Wednesday, November 6,
> 2019 2:20 AM
>>
>> On 2019-10-03 20:12, Michael Kelley wrote:
>> > Add ARM64-specific code to make Hyper-V hypercalls and to
>> > access virtual processor synthetic registers via hypercalls.
>> > Hypercalls use a Hyper-V specific calling sequence with a non-zero
>> > immediate value per Section 2.9 of the SMC Calling Convention
>> > spec.
>>
>> I find this "following the spec by actively sidestepping it" counter
>> productive. You (or rather the Hyper-V people) are reinventing the
>> wheel (of the slightly square variety) instead of using the standard
>> that the whole of the ARM ecosystem seems happy to take advantage
>> of.
>>
>> I wonder what is the rational for this. If something doesn't quite
>> work for Hyper-V, I think we'd all like to know.
>>
>
> I'll go another round internally with the Hyper-V people on this
> topic and impress upon them the desire of the Linux community to
> have Hyper-V adopt the true spirit of the spec.  But I know they are
> fairly set in their approach at this point, regardless of the 
> technical
> merits or lack thereof.  Hyper-V is shipping and in use as a 
> commercial
> product on ARM64 hardware, which makes it harder to change.  I
> hope we can find a way to avoid a complete impasse ....

Hyper-V shipping with their own calling convention is fine by me. Linux
having to implement multiple calling conventions because the Hyper-V
folks refuse (for undisclosed reason) to adopt the standard isn't fine 
at
all.

HV can perfectly retain its interface for Windows or other things, but
please *at least* implement the standard interface on which all 
existing
operating systems rely.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
