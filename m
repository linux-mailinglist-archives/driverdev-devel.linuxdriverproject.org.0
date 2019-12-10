Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524B118385
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 10:27:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C448922122;
	Tue, 10 Dec 2019 09:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0IPHkGvejmzh; Tue, 10 Dec 2019 09:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB04C20780;
	Tue, 10 Dec 2019 09:27:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D3FA1BF2A0
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A48084B6F
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 09:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8f4m7hF7Ygl for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:27:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B30CE84B08
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 09:27:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17D1920726;
 Tue, 10 Dec 2019 09:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575970069;
 bh=FXwGmlP7i/ZGQ9Iif2A4jfF4n1WNZuzQofHTptkaPcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aeeBMHyr1E204MPUijGvJJF2bDOP+Hw74l6LisLPKzrGhOtXGPUEKSXhJPRlXxnRz
 K33VP4P7cLH/Ve4QdevGNa3mBLb1ZeNX4VMHRYe2GXUf7xO4q0+ld96OBoIgNkXev5
 fQrAvwyRmZKBbliWrRP8oUk+zH8wmxM9k82DmYt8=
Date: Tue, 10 Dec 2019 10:27:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Adham.Abozaeid@microchip.com
Subject: Re: [PATCH 1/4] staging: wilc1000: use runtime configuration for
 sdio oob interrupt
Message-ID: <20191210092747.GA3548978@kroah.com>
References: <20191122205153.30723-1-adham.abozaeid@microchip.com>
 <CAGRGNgV=zW8xpgHfj99m9LHN=dtUBH_36_kQSnnBOrd_6WpDoA@mail.gmail.com>
 <a174f958-ddda-b57f-060b-ca4ed7c36ea1@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a174f958-ddda-b57f-060b-ca4ed7c36ea1@microchip.com>
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
Cc: devel@driverdev.osuosl.org, julian.calaby@gmail.com,
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 03, 2019 at 07:10:26PM +0000, Adham.Abozaeid@microchip.com wrote:
> 
> 
> On 11/25/19 2:26 AM, Julian Calaby wrote:
> > Hi Adham,
> >
> > The OOB interrupt is a GPIO and this is an SDIO card, so why not just
> > set the relevant pin in the devicetree and detect it based on that?
> >
> > I'm pretty sure that the Broadcom fmac driver does something like this.
> Thanks Julian and Dan for your feedback. We will go through the fmac driver to see how to improve OOB selection based on that, and send v2 of this patch.
> Greg, will it be possible to ignore this patch for now and merge the rest of the patch series?

Now ignored!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
