Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CEA358093
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Apr 2021 12:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC75660E5B;
	Thu,  8 Apr 2021 10:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTJ_EV1UBjrN; Thu,  8 Apr 2021 10:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAC0260D5F;
	Thu,  8 Apr 2021 10:27:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B20D11BF3DB
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 10:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C591400C8
 for <devel@linuxdriverproject.org>; Thu,  8 Apr 2021 10:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WyNqfLxfiiwp for <devel@linuxdriverproject.org>;
 Thu,  8 Apr 2021 10:27:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 482AD400A7
 for <devel@driverdev.osuosl.org>; Thu,  8 Apr 2021 10:27:03 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 s16-20020a0568301490b02901b83efc84a0so1743622otq.10
 for <devel@driverdev.osuosl.org>; Thu, 08 Apr 2021 03:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OPgpXoiJBLE7xLR6Mwqd8Fgd+bP7WP19uXTieYTkcCw=;
 b=a5o+RIbKsH38L+o/Oy1ji+i97mzEOma7h9jd370lnlRtzUmZVVt8Rx3aw+jMUBMrj0
 OGqrTleY1u/50YOwpU50Js1Xl5OtLncc+sg5uB113GhEhfaRrLOFp5DhYpIbuhpth4//
 quPQd1rrudYr8Tb92pslckHIsWdoalz7ifUf5AkaYDaUR5iL+Kjs/tnZKqu/zwTAvG2O
 GEwZp84bB4ZWFe0+Z1LagX1Ek7jq0/n7nUGfYPJsp+jue442to5Ahf6KaQgOGI7+FBZu
 vqLoHUhLeGyL38dno+pvrbDpwiC79c2r3MhpkszDWRqnjOvgW/OxayAQvOIQstfwwaeq
 eDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OPgpXoiJBLE7xLR6Mwqd8Fgd+bP7WP19uXTieYTkcCw=;
 b=c5P6/e4dW/bqATmfD2lkbWdpuP+M9OmnMI8va70vCIEtGAvdnkCr+VuW7xN5XWjnWV
 x5xGqnKElAv69MmPnBu/F6rKsl5hPZGPGwPJTovZFatvfCS03XbiPo5DbqT9c42FlGf/
 hhBsfNg0uOHnhEH3ziiImu51VJTNEoIYJEh1srO/v18S1etfaurKdz9myHwGwcoyEupp
 IWjz3rDz9qnUYq8fnB02nNp6MRyJ/f2Q98sGyUwNGO0aAyzkANIHerGtuGZpQfQOhrQM
 wL+n+cfkBxtpAC5xcpeWOe+mpgVfE11CuK2sTG7PnPVIbvyLVPcTilmfntPNs7bTfqn9
 3g/A==
X-Gm-Message-State: AOAM531104fgDaMYIFgzqVSKb2Zh8Kpxk/AP4b+WgG5i3dcokvFMMS0a
 6uuWOnykuWohfx8hRmX9JZd1ngNlCCi+ty+IRF0=
X-Google-Smtp-Source: ABdhPJzz9eA6rOHK+nS5k0wdbav/SHQRmxigzTKjxsZLMyUufFa1GRqnlOYHXbNR/TplkAKn99x4DCZqCohrHP7A+Lw=
X-Received: by 2002:a05:6830:408a:: with SMTP id
 x10mr6952838ott.248.1617877622284; 
 Thu, 08 Apr 2021 03:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1614172241-17326-9-git-send-email-shubhrajyoti.datta@xilinx.com>
 <20210306202022.GA1146983@robh.at.kernel.org>
In-Reply-To: <20210306202022.GA1146983@robh.at.kernel.org>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 8 Apr 2021 15:56:50 +0530
Message-ID: <CAKfKVtF8FAAt-Rszq62hBtJWokYXrKH_DwU1cGvXzBni99VM+A@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] dt-bindings: add documentation of xilinx clocking
 wizard
To: Rob Herring <robh@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, git@xilinx.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 7, 2021 at 1:50 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Feb 24, 2021 at 06:40:40PM +0530, Shubhrajyoti Datta wrote:
> > Add the devicetree binding for the xilinx clocking wizard.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > ---
> >  v6:
> >  Fix a yaml warning
> >  v7:
> >  Add vendor prefix speed-grade
> >  v8:
> >  Fix the warnings
> >  v10:
> >  Add nr-outputs
> >
> >  .../bindings/clock/xlnx,clocking-wizard.yaml       | 72 ++++++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> > new file mode 100644
> > index 0000000..280eb09
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> > @@ -0,0 +1,72 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/clock/xlnx,clocking-wizard.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Xilinx clocking wizard
> > +
> > +maintainers:
> > +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > +
> > +description:
> > +  The clocking wizard is a soft ip clocking block of Xilinx versal. It
> > +  reads required input clock frequencies from the devicetree and acts as clock
> > +  clock output.
> > +
> > +properties:
> > +  compatible:
> > +    const: xlnx,clocking-wizard
>
> Not very specific. Only 1 version of this h/w?

Will fix in next version
>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: clock input
> > +      - description: axi clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: clk_in1
> > +      - const: s_axi_aclk
> > +
> > +
> > +  xlnx,speed-grade:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [1, 2, 3]
> > +    description:
> > +      Speed grade of the device. Higher the speed grade faster is the FPGA device.
>
> How does one decide what value?
This is a property of the FPGA fabric.
So  hdf/xsa  should tell that
>
> > +
> > +  nr-outputs:
>
> xlnx,nr-outputs
>
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [1, 2, 3, 4, 5, 6, 7, 8]
>
> minimum: 1
> maximum: 8
>
> > +    description:
> > +      Number of outputs.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#clock-cells"
> > +  - clocks
> > +  - clock-names
> > +  - xlnx,speed-grade
> > +  - nr-outputs
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    wizard@b0000000  {
>
> clock-controller@...
will fix.
>
> > +        compatible = "xlnx,clocking-wizard";
> > +        reg = <0xb0000000 0x10000>;
> > +        #clock-cells = <1>;
> > +        xlnx,speed-grade = <1>;
> > +        nr-outputs = <6>;
> > +        clock-names = "clk_in1", "s_axi_aclk";
> > +        clocks = <&clkc 15>, <&clkc 15>;
> > +    };
> > +...
> > --
> > 2.1.1
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
