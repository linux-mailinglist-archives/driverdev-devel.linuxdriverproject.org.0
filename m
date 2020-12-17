Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 381C92DCF13
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 11:07:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD69687867;
	Thu, 17 Dec 2020 10:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-A6EOSkMmjs; Thu, 17 Dec 2020 10:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2C768768B;
	Thu, 17 Dec 2020 10:07:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07A941BF865
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0428A8765D
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 10:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYK7ITYe+IA9 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 10:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7ED0D8762C
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608199625;
 bh=rJjuFNiPQkDI7KWK2OcxZXbl5nGDXCLAOZmePaO9XL4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fpaenO8oQEPsX4xGaxxhdiRuviU+p9qoPkyqlDg/MnsVSMT2/DZpyhuswfSfoTD4m
 7UVsvUqtdnKqdhunpK1kemj0sJHOJVjwQsGzw05ltxpOussWcihmJ4HhpkM9lTsUEx
 eEdIWfszgDN6geD9tpk7i+BlDbbTzKdDNwJ4kikpWf+7hYSNI9PWKGgMSXz0KnhhWM
 haaSQ8HqVO4z5wR9I70scGMw5H6IebN5wMvLfyNGddF6DzsMzfXzvM7HePpg4Z1knx
 65GFfCys7an/G+b2RHxsJRBFU12LHpSA7vhx+videgnZP1HCTTiLEBW5N0byRluHqX
 Ls9hGvos11RgQ==
MIME-Version: 1.0
In-Reply-To: <CAMhs-H_EiDot_V4Qj1Q8noAf5RNi9BOyy0WmawE+70wY7=FxDg@mail.gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
 <20201122095556.21597-3-sergio.paracuellos@gmail.com>
 <160819550615.1580929.14234996916739809712@swboyd.mtv.corp.google.com>
 <CAMhs-H_EiDot_V4Qj1Q8noAf5RNi9BOyy0WmawE+70wY7=FxDg@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 17 Dec 2020 02:07:03 -0800
Message-ID: <160819962346.1580929.2348154780751858972@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 STAGING SUBSYSTEM <devel@driverdev.osuosl.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, MIPS <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>, COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2020-12-17 02:01:39)
> 
> On Thu, Dec 17, 2020 at 9:58 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Sergio Paracuellos (2020-11-22 01:55:52)
> >
> > > diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> > > new file mode 100644
> > > index 000000000000..6aca4c1a4a46
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> >
> > > +      compatible = "mediatek,mt7621-sysc", "syscon";
> > > +      reg = <0x0 0x100>;
> > > +
> > > +      pll {
> >
> > clock-controller? Why can't the parent device be the clk provider and
> > have #clock-cells?
> >
> 
> I don't get your point, sorry. Can you please explain this a bit more
> or point to me to an example to understand the real meaning of this?

It looks like this is a made up child node of syscon so that a driver
can probe in the kernel. It would be more DT friendly to create a
platform device from the parent node's driver, or just register the clks
with the framework directly in that driver.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
