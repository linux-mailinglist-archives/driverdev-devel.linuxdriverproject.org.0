Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD2511F7AA
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 13:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F107186ECA;
	Sun, 15 Dec 2019 12:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qJ32lZPsH6mq; Sun, 15 Dec 2019 12:20:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 967A186DBD;
	Sun, 15 Dec 2019 12:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBD011BF5E0
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 12:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF18A2039B
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 12:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FCqjk3HOvsDd for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 12:20:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 22E732037A
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 12:20:20 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A861F2054F;
 Sun, 15 Dec 2019 12:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576412420;
 bh=HSM3kjnBrmViAteF1Ui9aJjj67DF4kRB2tovXrQ0mBU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BKLPJDnXCefdxeDeWugRF4NcYVsItDmAfNaVKXhiFK/cNXDSAusKqKPPoLPVA/4CG
 Q/U0JnC1Yh1WnWieSWvXGmcqJA9QOSCANtPlmlzSkjOfxUV6sLszVKZsJDTTHzCJfw
 DkZZsrUhKD5meTAP2WPkUCc/5sXCfh9DvwKaNY+I=
Date: Sun, 15 Dec 2019 12:20:14 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v6 2/2] dt-bindings: iio: accel: add binding
 documentation for ADIS16240
Message-ID: <20191215122014.1e6ce604@archlinux>
In-Reply-To: <20191213191036.GA28558@bogus>
References: <20191207045339.9186-1-rodrigorsdc@gmail.com>
 <20191207045339.9186-2-rodrigorsdc@gmail.com>
 <20191213191036.GA28558@bogus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 13 Dec 2019 13:10:36 -0600
Rob Herring <robh@kernel.org> wrote:

> On Sat,  7 Dec 2019 01:53:39 -0300, Rodrigo Carvalho wrote:
> > This patch add device tree binding documentation for ADIS16240.
> > 
> > Signed-off-by: Rodrigo Carvalho <rodrigorsdc@gmail.com>
> > ---
> > V6:
> >   - Update SPDX license identifier
> > 
> >  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> >   
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Applied to the togreg branch of iio.git, picking up Rob's tag from v5.

Pushed out as testing for the autobuilders to poke at it.

Thanks,

Jonathan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
