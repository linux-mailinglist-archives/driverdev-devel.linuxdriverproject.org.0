Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FB9A3A87
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 17:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F2318730B;
	Fri, 30 Aug 2019 15:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUsDHEc4OPuF; Fri, 30 Aug 2019 15:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 569808716E;
	Fri, 30 Aug 2019 15:40:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF9E61BF284
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BCFCE89369
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 15:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjOa5rlGhEtt for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 15:40:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D499789339
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zsf6yGneFmydWkIl4Pued0hWa2tOF2q92siXl0GbIF4=; b=dY2DOX5o6SuQSeaVMMSXswOxlg
 Bg20uuzw3AAskQHpp+Dg0jhVrc9oB99k0q5hNaQ8/MaQpze8cUvHNPpKd+YTe2fgB+nYk6G8+/oD3
 v86ukmMaMhu69u63D8AQhmNTjwNajd1RK5kyFmBFCFX1yuQB+SuvOgvScHENHmv0geNqVllcvVsIe
 /AkYs5wx45cNWQAWcVTWgSpuPM2miHnfM7EmV7tSTespZ1rhZTvpI9BEtr8zc7pV1IkCrrGrcWvdd
 2bKj6VsWaRq6U2Ep89j/zpz+uC0P6V1rt9dlNxtv3unuZyYM1ygOyf5XeMZ4oPZVfwKaumr610tKx
 Sl1FrmZA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3j0Q-0002CE-M2; Fri, 30 Aug 2019 15:40:06 +0000
Date: Fri, 30 Aug 2019 08:40:06 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830154006.GB30863@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829205631.uhz6jdboneej3j3c@pali>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 10:56:31PM +0200, Pali Roh=E1r wrote:
> In my opinion, proper way should be to implement exFAT support into
> existing fs/fat/ code instead of replacing whole vfat/msdosfs by this
> new (now staging) fat implementation.
> =

> In linux kernel we really do not need two different implementation of
> VFAT32.

Not only not useful, but having another one is actively harmful, as
people might actually accidentally used it for classic fat.

But what I'm really annoyed at is this whole culture of just dumping
some crap into staging and hoping it'll sort itself out.  Which it
won't.  We'll need a dedidcated developer spending some time on it
and just get it into shape, and having it in staging does not help
with that at all - it will get various random cleanup that could
be trivially scripted, but that is rarely the main issue with any
codebase.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
