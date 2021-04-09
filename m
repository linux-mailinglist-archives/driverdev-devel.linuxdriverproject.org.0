Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E9735A946
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Apr 2021 01:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 917FB402C6;
	Fri,  9 Apr 2021 23:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z4QU0dHo9lGz; Fri,  9 Apr 2021 23:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD515401ED;
	Fri,  9 Apr 2021 23:33:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F12B1BF83C
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 23:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C146401EA
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 23:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CX-Lam61Korl for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 23:32:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F5EC401E7
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 23:32:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7878F610CA;
 Fri,  9 Apr 2021 23:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618011172;
 bh=LQjptmF8MepF3tK2x8z7XTkgYtDleL+Umaaih2EhyMU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=nusmPdWC0Qgno/sk5Iq2l4+hf0Z5KYW57Uo7SXiMwPIVtfdINqwVGAk0ChUsfQL6+
 4ii57ytVenu4SOi5lHBeP/h3kfs02/h5hbcXBRR0kpxMy/01c9GBr5soCvTxec5oE8
 t29oAherStTNOlMBJLZfMGAyGuzM4ZyeHqontE3SKYAsadLuZ8CW2Q3LWYG2PGWagZ
 i6AJLW+LXiaxE8gUMtzYRmuda4/O7mBLRXP2LMaW6wYTzp6QA8NOrMkbvB3Z8Y7nbf
 E93szktYHU8k1u/WgJ0KQCFCdUrYgU48yFOzGd25qopy3KGYJmBeEr1fjNGHNeuFOB
 qJF9pmddGc5xw==
MIME-Version: 1.0
In-Reply-To: <14254feb-ddbd-068d-74a4-61407177336d@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1614172241-17326-9-git-send-email-shubhrajyoti.datta@xilinx.com>
 <20210306202022.GA1146983@robh.at.kernel.org>
 <CAKfKVtF8FAAt-Rszq62hBtJWokYXrKH_DwU1cGvXzBni99VM+A@mail.gmail.com>
 <14254feb-ddbd-068d-74a4-61407177336d@xilinx.com>
Subject: Re: [PATCH v10 8/9] dt-bindings: add documentation of xilinx clocking
 wizard
From: Stephen Boyd <sboyd@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh@kernel.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Fri, 09 Apr 2021 16:32:51 -0700
Message-ID: <161801117111.2941957.3980674660268189208@swboyd.mtv.corp.google.com>
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
Cc: devel@driverdev.osuosl.org,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, git@xilinx.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Michal Simek (2021-04-08 03:40:29)
> 
> 
> On 4/8/21 12:26 PM, Shubhrajyoti Datta wrote:
> > On Sun, Mar 7, 2021 at 1:50 AM Rob Herring <robh@kernel.org> wrote:
> >>
> >> On Wed, Feb 24, 2021 at 06:40:40PM +0530, Shubhrajyoti Datta wrote:
> >>> Add the devicetree binding for the xilinx clocking wizard.
> >>>
> >>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> >>> ---
> >>>  v6:
> >>>  Fix a yaml warning
> >>>  v7:
> >>>  Add vendor prefix speed-grade
> >>>  v8:
> >>>  Fix the warnings
> >>>  v10:
> >>>  Add nr-outputs
> >>>
> >>>  .../bindings/clock/xlnx,clocking-wizard.yaml       | 72 ++++++++++++++++++++++
> >>>  1 file changed, 72 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> >>> new file mode 100644
> >>> index 0000000..280eb09
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> >>> @@ -0,0 +1,72 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: "http://devicetree.org/schemas/clock/xlnx,clocking-wizard.yaml#"
> >>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> >>> +
> >>> +title: Xilinx clocking wizard
> >>> +
> >>> +maintainers:
> >>> +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> >>> +
> >>> +description:
> >>> +  The clocking wizard is a soft ip clocking block of Xilinx versal. It
> >>> +  reads required input clock frequencies from the devicetree and acts as clock
> >>> +  clock output.
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: xlnx,clocking-wizard
> >>
> >> Not very specific. Only 1 version of this h/w?
> > 
> > Will fix in next version
> >>
> >>> +
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +
> >>> +  "#clock-cells":
> >>> +    const: 1
> >>> +
> >>> +  clocks:
> >>> +    items:
> >>> +      - description: clock input
> >>> +      - description: axi clock
> >>> +
> >>> +  clock-names:
> >>> +    items:
> >>> +      - const: clk_in1
> >>> +      - const: s_axi_aclk
> >>> +
> >>> +
> >>> +  xlnx,speed-grade:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    enum: [1, 2, 3]
> >>> +    description:
> >>> +      Speed grade of the device. Higher the speed grade faster is the FPGA device.
> >>
> >> How does one decide what value?
> > This is a property of the FPGA fabric.
> > So  hdf/xsa  should tell that
> 
> Shubhrajyoti: Rob likely doesn't know what hdf/xsa is that's why it is
> better to avoid it.
> 
> fpgas/pl part of SoC are tested for performance and different chips have
> different speed grades. This is done for every chip and some chips are
> faster/slower. Based on this speed grade is labeled. And there is no way
> how to find at run time which speed grade your device has. That's why
> there is a need to have property to identify this.
> 
> In designed tools it is your responsibility to select proper chip based
> on your order and then this value is propagated in Xilinx standard way
> via device tree generator to fill the right value for this property.

The OPP framework and binding has support for speed grades via the
'supported-hw' property. I expect this speed-grade property could be
dropped and an opp table could be assigned to the clk controller node
for this speed grade by the DT author. Unfortunate that it isn't burned
somewhere into the device so that software can pick the right frequency
limits that way.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
