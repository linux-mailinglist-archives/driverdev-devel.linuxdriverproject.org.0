Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5410611EB3D
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 20:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5924C88542;
	Fri, 13 Dec 2019 19:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NTtwbMxEm3QY; Fri, 13 Dec 2019 19:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EABD488502;
	Fri, 13 Dec 2019 19:52:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3831B1BF3DB
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 344CA20449
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4kecQu63o8Q for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 19:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 53BEE203F0
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 19:52:11 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id x14so1734948oic.10
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 11:52:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LUyMz6kQuofRI0IuH2BvhvOA6mSu4eEqr0p1RAXMOGY=;
 b=VOSrot9VpXYUEi28TIKwVUQn1TtQ+JENe61Iu0GiXUjTTWtSsfYSTgZRgmwjX1B0F4
 KapOn62SFKUJ+gpPTK3MZxJbVQL02Qpe95jf3KqNhkFmRmwCjADSKFQ6S038s2EYYP8N
 A7MSeVH5rtyXctOh58fbuL8lJmTTTnpq9Netwo7MGxStFmX+qxPYjTMF/iGGC1QXvZLC
 nz5B5EvSBkobpnvthWCvvDDKg61kPhIzJdvNxeB3zguBjNI4uagy8+BPC9QBwWtsBKEl
 AN3taWTwxkH0HTZHKGQr0nisdn6vS3hmLJ15vFzHM1JHqlh69V49EGdLpr7cbhs3gtwP
 knxA==
X-Gm-Message-State: APjAAAVDd4YTkZPKbb/Smtskj/zyKWdYVl1YY6nNfJ37K0+zBp+N94hQ
 LTH7QU6BYKgWqj7BhLMZrQ==
X-Google-Smtp-Source: APXvYqxWnSf1TSTqNCprxjSGfagOYPCHy5twHRF/1t+lAsvvLT3qhSa46ofJ4uP1SnEwS/ykByoHmw==
X-Received: by 2002:aca:815:: with SMTP id 21mr8045671oii.52.1576266730462;
 Fri, 13 Dec 2019 11:52:10 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f142sm3637418oig.48.2019.12.13.11.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:52:09 -0800 (PST)
Date: Fri, 13 Dec 2019 13:52:08 -0600
From: Rob Herring <robh@kernel.org>
To: shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 01/10] dt-bindings: add documentation of xilinx
 clocking wizard
Message-ID: <20191213195208.GB13693@bogus>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <54f8c5ce9c84265437734943f68e3ee4c2458bd5.1574922435.git.shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54f8c5ce9c84265437734943f68e3ee4c2458bd5.1574922435.git.shubhrajyoti.datta@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 28, 2019 at 12:06:08PM +0530, shubhrajyoti.datta@gmail.com wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Add the devicetree binding for the xilinx clocking wizard.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  .../bindings/clock/xlnx,clocking-wizard.txt        | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt

New bindings should be in DT schema format.

> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt
> new file mode 100644
> index 0000000..aedac84
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt
> @@ -0,0 +1,32 @@
> +Binding for Xilinx Clocking Wizard IP Core
> +
> +This binding uses the common clock binding[1]. Details about the devices can be
> +found in the product guide[2].
> +
> +[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +[2] Clocking Wizard Product Guide
> +http://www.xilinx.com/support/documentation/ip_documentation/clk_wiz/v5_1/pg065-clk-wiz.pdf
> +
> +Required properties:
> + - compatible: Must be 'xlnx,clocking-wizard'

That's not very specific. Is there only 1 version of this h/w?

> + - #clock-cells: Number of cells in a clock specifier. Should be 1
> + - reg: Base and size of the cores register space
> + - clocks: Handle to input clock
> + - clock-names: Tuple containing 'clk_in1' and 's_axi_aclk'
> + - clock-output-names: Names for the output clocks

You have to define the values.

> +
> +Optional properties:
> + - speed-grade: Speed grade of the device (valid values are 1..3)
> +
> +Example:
> +	clock-generator@40040000 {
> +		#clock-cells = <1>;
> +		reg = <0x40040000 0x1000>;
> +		compatible = "xlnx,clocking-wizard";
> +		speed-grade = <1>;
> +		clock-names = "clk_in1", "s_axi_aclk";
> +		clocks = <&clkc 15>, <&clkc 15>;
> +		clock-output-names = "clk_out0", "clk_out1", "clk_out2",
> +				     "clk_out3", "clk_out4", "clk_out5",
> +				     "clk_out6", "clk_out7";

Don't really need this to be in DT given all the names are the same 
except for the index.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
