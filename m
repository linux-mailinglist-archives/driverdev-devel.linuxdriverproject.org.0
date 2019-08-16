Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2537A8FB46
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 08:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6FCAB8795E;
	Fri, 16 Aug 2019 06:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ugFjITavSAm; Fri, 16 Aug 2019 06:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1418878E1;
	Fri, 16 Aug 2019 06:44:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0AD51BF842
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 06:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE69A203AD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 06:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJRZ0NGa+fnJ for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 06:44:30 +0000 (UTC)
X-Greylist: delayed 00:05:47 by SQLgrey-1.7.6
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by silver.osuosl.org (Postfix) with ESMTPS id 7BEA6203A2
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 06:44:30 +0000 (UTC)
Received: from zn.tnic (p200300EC2F0A920041519BC41B2ACCA3.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:9200:4151:9bc4:1b2a:cca3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 8C8E51EC0A91;
 Fri, 16 Aug 2019 08:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1565937519;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=5Vqiu9wtaNx8kVRzHPBxlLz2F2d6oTzKG7AVaoCM5PU=;
 b=V1pG1doAqPi4XoqA2IBe8N40J5t74wL8WVTo6puCBmWddUU3k/Khf7QOat3LZ6FoCArSVX
 RUEzU4Ng1uH9iV7KWOckv85k2fnd8FJc5j+6mp5X1Va7mnWKkO3aa/DvZ6ylTFfWODEDq/
 J4RhIRXf3QR4LrTQAkdTqeyVY2LF2gU=
Date: Fri, 16 Aug 2019 08:39:25 +0200
From: Borislav Petkov <bp@alien8.de>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
Message-ID: <20190816063925.GB18980@zn.tnic>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:41AM +0800, Zhao Yakui wrote:
> The first three patches are the changes under x86/acrn, which adds the
> required APIs for the driver and reports the X2APIC caps. 
> The remaining patches add the ACRN driver module, which accepts the ioctl
> from user-space and then communicate with the low-level ACRN hypervisor
> by using hypercall.

I have a problem with that: you're adding interfaces to arch/x86/ and
its users go into staging. Why? Why not directly put the driver where
it belongs, clean it up properly and submit it like everything else is
submitted?

I don't want to have stuff in arch/x86/ which is used solely by code in
staging and the latter is lingering there indefinitely because no one is
cleaning it up...

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
