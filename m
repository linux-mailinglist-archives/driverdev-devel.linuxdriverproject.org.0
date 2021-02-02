Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCBC30BCAA
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 12:09:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5ABE086D52;
	Tue,  2 Feb 2021 11:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Mnm2n4OgixX; Tue,  2 Feb 2021 11:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C436382241;
	Tue,  2 Feb 2021 11:09:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1BE2D1BF865
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 11:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0AAC720338
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 11:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4j5IVacelDu for <devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3521A2001E
 for <devel@driverdev.osuosl.org>; Tue,  2 Feb 2021 11:09:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 35B4D64DBA;
 Tue,  2 Feb 2021 11:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612264183;
 bh=vFq7NeMfV2przweTzpyrmikuLaJJ1nfz6/jdCK3tvEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GX2Qcv4WYw5IZEx26CjLWvUiGDL/karsEKhSceYQZLLruY6Ewbzels1ZEvisjawhZ
 D3qzytq1cwpJMnQYocZ4IcppouH+1Wz/3j4vgxnWqxGrIUtJJy4W/d3gEeFF7iZ3li
 kb1nfedYhgalG/kXAJqES4bf/+V2ZQ8jhpyKFUWQ=
Date: Tue, 2 Feb 2021 12:09:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging/mt7621-dma: mtk-hsdma.c->hsdma-mt7621.c
Message-ID: <YBky8lfQ1DmuKtRL@kroah.com>
References: <20210130034507.2115280-1-ilya.lipnitskiy@gmail.com>
 <20210202065438.GO2696@kadam> <20210202083117.GS2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210202083117.GS2696@kadam>
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
Cc: devel@driverdev.osuosl.org, Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>, stable@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 02, 2021 at 11:31:17AM +0300, Dan Carpenter wrote:
> Apparently this was already merged?  Never mind then.  Once it's merged
> it can't be changed.  No big stress...

Sorry, yes, already in my tree...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
