Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE1522517D
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3522685BEC;
	Sun, 19 Jul 2020 11:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HLJK1sq65UOm; Sun, 19 Jul 2020 11:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58B0685BAE;
	Sun, 19 Jul 2020 11:05:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DABF1BF46A
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EFAC820104
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFtCL5eSwNAI for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:05:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 721662001F
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:05:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92D3C2065E;
 Sun, 19 Jul 2020 11:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595156746;
 bh=3RYTI3kIR0sm4yP0B0+AU+jVL4lPaOvkU/H2NQe3xxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wHp3kH9/ZqL7UhMEWQeT1ocg5zsEdnfeeHHmHNz7XvxlXar0s99dFgJN5xDT2rT5Z
 KVvdZ3JBnYk+xXZH+4PLP3Ov82QHXuPitOn1k4Dz1ImghYlkcI/kUjKSSz4U7nxe+q
 bhXq8f5rROB3iW0yRCvnuLZbo/T3dTCcSMDTBE0U=
Date: Sun, 19 Jul 2020 13:05:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshan D V <darshandv10@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8192e: Fixed a coding style warning
Message-ID: <20200719110558.GC266150@kroah.com>
References: <20200719092236.GB171181@kroah.com>
 <20200719105557.12605-1-darshandv10@gmail.com>
 <20200719105557.12605-2-darshandv10@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719105557.12605-2-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, contact@christina-quast.de,
 yuehaibing@huawei.com, ardb@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 19, 2020 at 04:25:57PM +0530, Darshan D V wrote:
>     rtllib_crypt_ccmp.c: Fixed the warning - suspect code indent for
>     conditional statements on line #338

You can't send two patches that do two different things, yet have the
same exact subject: line :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
