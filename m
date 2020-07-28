Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCCD230438
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 09:37:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F26E022E8C;
	Tue, 28 Jul 2020 07:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8YvVs5pbx7M; Tue, 28 Jul 2020 07:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2867C22CC7;
	Tue, 28 Jul 2020 07:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42B7A1BF293
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 07:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F44187E41
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 07:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNPMHOCrUDXG for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 07:37:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4082487E3D
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 07:37:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FF1C20786;
 Tue, 28 Jul 2020 07:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595921842;
 bh=nHg0yBmAWqsOsobn8G2iptEUXidooZ09VVmDRHvOIpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZeqX0DBs30ldEyJ0nnuMTe2YpqY/Sly2qjXTN+TsU4jUvf6J2FMKCbZGwr/mU79Lf
 Ib84m4TchlLqbONBVCdTmKEVNam8Or+/RC7ijCuByx3BPkkh/L+tZ+2Upt/xpuz/Gr
 W9mkxaebKHZQj54v1G6JXxz9KZrWoi78ZVaibKmQ=
Date: Tue, 28 Jul 2020 09:37:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ankit <b18007@students.iitmandi.ac.in>
Subject: Re: [PATCH] Staging : media : atomisp : fixed a brace coding sytle
 issue
Message-ID: <20200728073715.GA351768@kroah.com>
References: <20200727121635.GT3703480@smile.fi.intel.com>
 <20200727213010.15156-1-b18007@students.iitmandi.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200727213010.15156-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 28, 2020 at 03:00:10AM +0530, Ankit wrote:
> From: Ankit Baluni<b18007@students.iitmandi.ac.in>

You need a ' ' before the '<' character.

> 
> Fixed a coding style issue.

Be more descriptive of what you are doing, this is vague.

> 
> Signed-off-by: Ankit Baluni<b18007@students.iitmandi.ac.in>

Same here with the ' '.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
