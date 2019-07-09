Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F736397D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 18:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 451BC85B0A;
	Tue,  9 Jul 2019 16:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMR6PxcFyAWc; Tue,  9 Jul 2019 16:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97A6684E5E;
	Tue,  9 Jul 2019 16:37:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE48C1BF576
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC68C2151F
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjLl4cDtPbz5 for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 16:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B75320341
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 16:37:46 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13781208C4;
 Tue,  9 Jul 2019 16:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562690266;
 bh=pWkEe167WbQ442zTlFI4Y3F1p4RvsuiGLSHIBQKeshs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jSyvIkqznH1WlovJsD6MlNU3vQ2Ji0uMayXarPnw61MDn+d/e4OSQ2ML34vrJRrUQ
 LbA04BEPvfWB1SiBzqsJupyaw+8nQhqI0P2XRYpJqVgNybheVpIhb9X30QPwgvV/IG
 M9a16F6dTB6YYhRxZrYqzfliKgEKI12jdC/OkYnk=
Date: Tue, 9 Jul 2019 12:37:44 -0400
From: Sasha Levin <sashal@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: exfat filesystem
Message-ID: <20190709163744.GS10104@sasha-vm>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709154834.GJ32320@bombadil.infradead.org>
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
Cc: devel@driverdev.osuosl.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 09, 2019 at 08:48:34AM -0700, Matthew Wilcox wrote:
>On Tue, Jul 09, 2019 at 11:30:39AM -0400, Theodore Ts'o wrote:
>> On Tue, Jul 09, 2019 at 04:21:36AM -0700, Matthew Wilcox wrote:
>> > How does
>> > https://www.zdnet.com/article/microsoft-open-sources-its-entire-patent-portfolio/
>> > change your personal opinion?
>>
>> According to SFC's legal analysis, Microsoft joining the OIN doesn't
>> mean that the eXFAT patents are covered, unless *Microsoft*
>> contributes the code to the Linux usptream kernel.  That's because the
>> OIN is governed by the Linux System Definition, and until MS
>> contributes code which covered by the exFAT patents, it doesn't count.
>>
>> For more details:
>>
>> https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
>>
>> (This is not legal advice, and I am not a lawyer.)
>
>Interesting analysis.  It seems to me that the correct forms would be
>observed if someone suitably senior at Microsoft accepted the work from
>Valdis and submitted it with their sign-off.  KY, how about it?

Huh, that's really how this works? Let me talk with our lawyers to clear
this up.

Would this mean, hypothetically, that if MS has claims against the
kernel's scheduler for example, it can still assert them if no one from
MS touched the code? And then they lose that ability if a MS employee
adds a tiny fix in?

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
