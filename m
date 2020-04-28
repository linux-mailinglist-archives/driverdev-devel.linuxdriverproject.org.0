Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2581BB912
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 10:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A9CD3226FF;
	Tue, 28 Apr 2020 08:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ybk7MMA2q3Gk; Tue, 28 Apr 2020 08:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E72F2262B;
	Tue, 28 Apr 2020 08:46:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D85F1BF312
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 69D2D86BDC
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+LgXqb-rxwh for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 08:46:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A5CA086BB9
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 08:46:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E370206B9;
 Tue, 28 Apr 2020 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588063586;
 bh=O2FUojuzfujXTEPHXdG90VInygWbIERCNUypjs0pcF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CawfnIyldNgBbWstwbZiVDwUox+98JDbIHUk+UxCKqMZVgeF7ozxKCMWmPWmY/XTi
 nzyeuXA8G2Z+vTFfcTC0OWMDh/2P87Ve2x3Whorl2TKb0bJ2ksB/CGm3Dt0P5uBA2g
 a1bGd9tP+x80H69SPGEAlTWvnwcMP6CAGIF+HK40=
Date: Tue, 28 Apr 2020 10:46:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 1/2] staging: rtl8723bs: remove mgmt_frame_register method
Message-ID: <20200428084624.GB996383@kroah.com>
References: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
 <9a21da0be7d6fc70541adff2cdb676eb7b04070e.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a21da0be7d6fc70541adff2cdb676eb7b04070e.camel@sipsolutions.net>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Sergey Matyukevich <geomatsi@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 28, 2020 at 10:16:57AM +0200, Johannes Berg wrote:
> Greg,
> 
> I'm going to take these through my tree because I broke the APIs there
> (and wasn't paying attention to staging), but every bot around the world
> is complaining now that my tree doesn't build ... :)

No objection from me!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
