Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6667F1484
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 12:01:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7143F227EC;
	Wed,  6 Nov 2019 11:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fcMjhXs+BLuY; Wed,  6 Nov 2019 11:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6CB44204AE;
	Wed,  6 Nov 2019 11:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 805E61BF3D7
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 11:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7903A88F65
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 11:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SHpUi7w9_3Rm for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 11:01:50 +0000 (UTC)
X-Greylist: delayed 00:42:32 by SQLgrey-1.7.6
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org
 [213.251.177.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5232388F58
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 11:01:50 +0000 (UTC)
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSIP7-0007q5-Ff; Wed, 06 Nov 2019 11:19:09 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 2/8] arm64: hyperv: Add hypercall and register access
 functions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 06 Nov 2019 11:28:30 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-3-git-send-email-mikelley@microsoft.com>
Message-ID: <8cdc86e5bcf861c74069e0d349910c94@www.loen.fr>
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

On 2019-10-03 20:12, Michael Kelley wrote:
> Add ARM64-specific code to make Hyper-V hypercalls and to
> access virtual processor synthetic registers via hypercalls.
> Hypercalls use a Hyper-V specific calling sequence with a non-zero
> immediate value per Section 2.9 of the SMC Calling Convention
> spec.

I find this "following the spec by actively sidestepping it" counter
productive. You (or rather the Hyper-V people) are reinventing the
wheel (of the slightly square variety) instead of using the standard
that the whole of the ARM ecosystem seems happy to take advantage
of.

I wonder what is the rational for this. If something doesn't quite
work for Hyper-V, I think we'd all like to know.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
