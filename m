Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BFB4759C
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 17:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C865385773;
	Sun, 16 Jun 2019 15:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WmDTfM4HHmT5; Sun, 16 Jun 2019 15:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78F5384E55;
	Sun, 16 Jun 2019 15:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A8591BF488
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 15:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8628E87216
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 15:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ApSfG5Rb7bRj for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 15:45:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B886870C7
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 15:45:55 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E55202063F;
 Sun, 16 Jun 2019 15:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560699954;
 bh=FfgxTZ0FGxbj3xlmt5bwJEqweYKRnTtg8LNoSPRC0Lw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CvMSrzqOXMv2n8ac+ol7mLeNMxoosOicaYWKvMibcPR4JgFwQ362TG/bFkT1oeMrP
 4E7QnDDS6SN4RM3FfYb4CM1m9ysh2LyqHSwO2NxtOX2IjKuGZEP8tnKOiQnv8dA0X6
 y25aIaYbp9Lp9Vy7Y9PSvPBtdrcw2chMEAoWdpKg=
Date: Sun, 16 Jun 2019 16:45:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Message-ID: <20190616164548.01444b50@archlinux>
In-Reply-To: <20190614194302.GA18613@bogus>
References: <cover.1558746978.git.renatogeh@gmail.com>
 <2426649b2d8224ae72e7706bcb8c4f2c44c581d2.1558746978.git.renatogeh@gmail.com>
 <20190614194302.GA18613@bogus>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org, lars@metafoo.de,
 stefan.popa@analog.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Renato Lui Geh <renatogeh@gmail.com>,
 alexandru.Ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 14 Jun 2019 13:43:02 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, 24 May 2019 22:26:30 -0300, Renato Lui Geh wrote:
> > This patch adds a YAML binding for the Analog Devices AD7780/1 and
> > AD7170/1 analog-to-digital converters.
> > 
> > Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
> > ---
> > Changes in v2:
> >  - vref-supply to avdd-supply
> >  - remove avdd-supply from required list
> >  - include adc block in an spi block
> > 
> >  .../bindings/iio/adc/adi,ad7780.txt           | 48 ----------
> >  .../bindings/iio/adc/adi,ad7780.yaml          | 87 +++++++++++++++++++
> >  2 files changed, 87 insertions(+), 48 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks. As I'd not yet pushed out as togreg (rather than testing)
I've rebased to add your RB.

Thanks,

Jonathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
