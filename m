Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E92CF263D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:28:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FCF486CC5;
	Wed, 22 May 2019 12:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOgy3pKMrtBC; Wed, 22 May 2019 12:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3754486BC6;
	Wed, 22 May 2019 12:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23AAB1BF4D8
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 179A4304CA
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZuFeS93uO6L for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:28:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C161130373
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:28:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 221032173C;
 Wed, 22 May 2019 12:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558528101;
 bh=8+ON6xc7MF+ElUMANsWO5KBak8Ucahh+C2K3SpPKaZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cPlYwDRvn+p12SaYYTrR+s92aO4WfQtf+QU2xGWtx7plFLafhqkB0OhDMtcx1bZsc
 nZjV0jVHXbo17G0Cw/hUvg2icDcfl32jZrPaoSsTIM7Jcuv+ZVyNyfo7pENhKupFTl
 G5PDfJvHPlZ2w4Zs6UXhHtnW9xw+niBnnbaFyKCI=
Date: Wed, 22 May 2019 14:28:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 0/6] Minor updates to kpc_i2c driver and kpc2000 core
Message-ID: <20190522122819.GA15130@kroah.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 12:13:56PM +0000, Geordan Neukum wrote:
> Attached are an assortment of minor updates to the kpc_i2c driver as
> well as a build fix for all of those who will need the KPC2000 core.

Nit, please put "staging" in your 0/6 patch to make it easier for
scripts to pick this up properly.  For next time please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
