Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F66D18F053
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 08:36:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 262F088489;
	Mon, 23 Mar 2020 07:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tiGGQnt0Qyj; Mon, 23 Mar 2020 07:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8230088188;
	Mon, 23 Mar 2020 07:36:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 057BC1BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01ECF88188
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNlimY-f0BeM for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 07:36:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE39F88179
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 07:36:15 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvaSG-1jZari3cYA-00seVq for <devel@driverdev.osuosl.org>; Mon, 23 Mar
 2020 08:36:12 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 3390E6503E9
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 07:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2OGBccmmQCr for <devel@driverdev.osuosl.org>;
 Mon, 23 Mar 2020 08:36:11 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id BD64B6503AA
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:36:11 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.4) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 23 Mar 2020 08:36:11 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id A763D804FB; Mon, 23 Mar 2020 08:35:57 +0100 (CET)
Date: Mon, 23 Mar 2020 08:35:57 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v2 08/10] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200323073557.GA4298@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <ebda055ae4c898b4ca29e518f89d8f3f4be4d27c.1584639664.git.alexander.riesen@cetitec.com>
 <87fte0lyjz.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fte0lyjz.wl-kuninori.morimoto.gx@renesas.com>
X-Originating-IP: [10.8.5.4]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7066
X-Provags-ID: V03:K1:lKgNLUnJ0xVe34sT7rffOCu+Ob/3ZimKr8BQZSigBb+Kn5Jw+9E
 qOtlcyjwIJ7gJ43DYL3gSfxzyLgNlvf+hqoBUT7qWDFrQaHKx2QkvN6J6A7YeqXrVQqDjqe
 sDwd4w5NE+zzVTf/Pmt51RGY06eK3wTolkbsvU/l52Ow34h4HY50pXliieuH1oSSAQd3m2g
 1huT38jMe0PDymdEvOaRw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZEC7yMQmUFA=:b+LM3j3Fk7vkemiQFz5DsX
 UUozl4Jta9k5qgAjYfwWTfI/gZAILjdrcGID9yiAaNI5uNPsho0hUyESlOl5n7Obf3mpHbt1B
 liX6bDB+XUeS7ncI5OctvnlxagRBbwZNa016rbanH0Lt7WcDZuSQTkB6eNKVDIYWMHcjIe1ro
 awpqK/S4XkUw2OysSZFVOXW7a4lIRJlMbW3oDDMGWqYnlI479ZCGkCOTulMndI1i6h1v1+Q6l
 mfr/dm9W8479N5RpnHVMIWcWEj/4Ds8qAIdspMXJrVBhEURwLtnBoP7FbORbI5xTdwjVdo7Ot
 UkqceZwlYso9Rqczb9OW8tAC/ZPKwilRIKMfnUhBFPlmpPx7JtuJG9JUhol9l03ILFjGOK3it
 Pgkd8pgK5KQs6XyTVLW5wb3X9nzdiyVxG4WOuEKw0w6VqJLf4Q9WQmUiilpdaZV+w7ZJxJVNP
 QVbaFjyFpqRBrKv2gf88QVZ5Bf/RyUky5NegRGi1RkL1WyphvezpAJy/rme238X4JyJ9jBYAo
 OBihYqAwuiy14PIkqVuPmdLcJUXJaJoCtbe2VLMQsmKA2nN1QYWRRIe4q4XkDeSww8GbWMLtc
 OTEP+eRaU0aipGJ8y9JlD27sictCJtX9dHIqIOnPTn+RYgZKVaNxqzLQs9f/9SW930STt2n16
 U+/EyObV57Q39F53Nqb0RF4y7AF5VRe24TqCyUWyJdlYxvaiQahv+ED6JkK6wPChTlTt8Y1G7
 DIgFSBpMSEgJRrw50TwoTbC/tlBxXhEBkl79QyU2t7S1pWKqWFGqWha+WRJm+7B8NBeaxynjE
 FB9Pyj2hqlsNOtMuFaLc8ax04XIvUbhiL79/3XBAk7z5qbckxH7qbywFzc79cQoZDMK7gR2
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans
 Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Morimoto-san,

Kuninori Morimoto, Mon, Mar 23, 2020 01:12:00 +0100:
> > As all known variants of the Salvator board have the HDMI decoder
> > chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> > endpoint and the connection definitions are placed in the common board
> > file.
> > For the same reason, the CLK_C clock line and I2C configuration (similar
> > to the ak4613, on the same interface) are added into the common file.
> > 
> > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> (snip)
> > @@ -758,8 +769,19 @@ &rcar_sound {
> >  		 <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
> >  		 <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
> >  		 <&audio_clk_a>, <&cs2000>,
> > -		 <&audio_clk_c>,
> > +		 <&adv7482_hdmi_in>,
> >  		 <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
> > +	clock-names = "ssi-all",
> > +		      "ssi.9", "ssi.8", "ssi.7", "ssi.6",
> > +		      "ssi.5", "ssi.4", "ssi.3", "ssi.2",
> > +		      "ssi.1", "ssi.0",
> > +		      "src.9", "src.8", "src.7", "src.6",
> > +		      "src.5", "src.4", "src.3", "src.2",
> > +		      "src.1", "src.0",
> > +		      "mix.1", "mix.0",
> > +		      "ctu.1", "ctu.0",
> > +		      "dvc.0", "dvc.1",
> > +		      "clk_a", "clk_b", "clk_c", "clk_i";
> 
> I think you don't need to overwrite clock-names here in this case ?

I vaguely remember something using the names and failing to enable clk_c
without the list spelled out...

I shall re-test though, perhaps it was my own code (since removed) using it.

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
