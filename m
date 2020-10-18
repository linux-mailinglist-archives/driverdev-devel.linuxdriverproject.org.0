Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37431291939
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D44AC8738F;
	Sun, 18 Oct 2020 19:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6a9mP4rMPdq; Sun, 18 Oct 2020 19:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 131B487388;
	Sun, 18 Oct 2020 19:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7268D1BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6B2BA872B3
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fP6necvfqlw7 for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 19:13:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 369A88738F
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 6E9191280300;
 Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1603048418;
 bh=z260bBy56dgN8y3lDRHRQeuKrIr1eALRZNoNPoXlSSo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=QOZMzgTQH16i5avnDNVW0Ktw3okhOk0UWDzTWl7121p+F93A1Quw31cCRVLQH+SGW
 zn7QBaZkwCTKpROUCnm6j2wnXTspVYtdUU68F1++PaWc9wHgdj5YeqG30CVReBaxSQ
 7zgTTXbB0BvsKBkgxIK2UI/Iu/DopS5PndAYThf8=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id JsjuUxZpqgrR; Sun, 18 Oct 2020 12:13:38 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::c447])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 1ED2912802BA;
 Sun, 18 Oct 2020 12:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1603048418;
 bh=z260bBy56dgN8y3lDRHRQeuKrIr1eALRZNoNPoXlSSo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=QOZMzgTQH16i5avnDNVW0Ktw3okhOk0UWDzTWl7121p+F93A1Quw31cCRVLQH+SGW
 zn7QBaZkwCTKpROUCnm6j2wnXTspVYtdUU68F1++PaWc9wHgdj5YeqG30CVReBaxSQ
 7zgTTXbB0BvsKBkgxIK2UI/Iu/DopS5PndAYThf8=
Message-ID: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy@infradead.org>, trix@redhat.com
Date: Sun, 18 Oct 2020 12:13:35 -0700
In-Reply-To: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018185943.GM20115@casper.infradead.org>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
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
Cc: alsa-devel@alsa-project.org, linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, usb-storage@lists.one-eyed-alien.net,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-pm@vger.kernel.org,
 ath10k@lists.infradead.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, industrypack-devel@lists.sourceforge.net,
 linux-pci@vger.kernel.org, spice-devel@lists.freedesktop.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfc@lists.01.org,
 linux-serial@vger.kernel.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 storagedev@microchip.com, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, clang-built-linux@googlegroups.com,
 patches@opensource.cirrus.com, linux-crypto@vger.kernel.org,
 linux-integrity@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > clang has a number of useful, new warnings see
> > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> 
> Please get your IT department to remove that stupidity.  If you
> can't, please send email from a non-Red Hat email address.

Actually, the problem is at Oracle's end somewhere in the ocfs2 list
... if you could fix it, that would be great.  The usual real mailing
lists didn't get this transformation

https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/

but the ocfs2 list archive did:

https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html

I bet Oracle IT has put some spam filter on the list that mangles URLs
this way.

James


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
