Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1952129195F
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 21:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E964877B3;
	Sun, 18 Oct 2020 19:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPXIhWyDmYcS; Sun, 18 Oct 2020 19:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70EFD8779D;
	Sun, 18 Oct 2020 19:16:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F13B1BF568
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B430873AC
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 19:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MxT46YX1REkR; Sun, 18 Oct 2020 19:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7094C873A1;
 Sun, 18 Oct 2020 19:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jSZ48E7Pk5au6oJE5B/SpoPyGzHAu2LHc5e92XLrkbA=; b=iJ9Ua4Sb+7c2gBb5X093C2g3JF
 uPXvpy94QM9OfF4QdLHnbdoyPK+foTfLSCfptUIJX1L1QmBGwqRRLC+FO4yttdeacV1S+hl8hKo0C
 WTqtwQkEZQTbeO+X3m7Juje7eQPdNT7ZY2bxJ15gxf5bGTukHh/PFeI2Wotfd6qSzqn3KwhwiSJ8q
 nHMmLI1n6mOTyu1OQHnDgD5bqj+pk9E7DasCqQG55sL9hd/rW8umvQBQI/4FGFQAjFO02dSWITtwv
 yXkpHo9Iys1nXXFCivdyuKxTY6HM4UcykOYUxv1R/rziPsZPtETfWCfkBycLom8Snu0zA9/3jwQkF
 l4f6J+YQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kUEAE-0008Qi-Sy; Sun, 18 Oct 2020 19:16:19 +0000
Date: Sun, 18 Oct 2020 20:16:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018191618.GO20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018185943.GM20115@casper.infradead.org>
 <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45efa7780c79972eae9ca9bdeb9f7edbab4f3643.camel@HansenPartnership.com>
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
Cc: alsa-devel@alsa-project.org, linux-iio@vger.kernel.org, trix@redhat.com,
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, usb-storage@lists.one-eyed-alien.net,
 devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-pm@vger.kernel.org,
 ath10k@lists.infradead.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, industrypack-devel@lists.sourceforge.net,
 nouveau@lists.freedesktop.org, spice-devel@lists.freedesktop.org,
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

On Sun, Oct 18, 2020 at 12:13:35PM -0700, James Bottomley wrote:
> On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > clang has a number of useful, new warnings see
> > > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> > 
> > Please get your IT department to remove that stupidity.  If you
> > can't, please send email from a non-Red Hat email address.
> 
> Actually, the problem is at Oracle's end somewhere in the ocfs2 list
> ... if you could fix it, that would be great.  The usual real mailing
> lists didn't get this transformation
> 
> https://lore.kernel.org/bpf/20201017160928.12698-1-trix@redhat.com/
> 
> but the ocfs2 list archive did:
> 
> https://oss.oracle.com/pipermail/ocfs2-devel/2020-October/015330.html
> 
> I bet Oracle IT has put some spam filter on the list that mangles URLs
> this way.

*sigh*.  I'm sure there's a way.  I've raised it with someone who should
be able to fix it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
