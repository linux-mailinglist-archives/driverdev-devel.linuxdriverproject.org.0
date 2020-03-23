Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819118F101
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:40:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1018C880DD;
	Mon, 23 Mar 2020 08:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mOI0v3Ki8GBf; Mon, 23 Mar 2020 08:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8D8B88081;
	Mon, 23 Mar 2020 08:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 424EA1BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3B290204A7
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4j2sULhVbza for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:40:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by silver.osuosl.org (Postfix) with ESMTPS id A31C3220C1
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:40:30 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MaIzb-1imkZt1Qw9-00WIhT for <devel@driverdev.osuosl.org>; Mon, 23 Mar
 2020 09:40:28 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id D99826503F9
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szBK1kEZUJ-5 for <devel@driverdev.osuosl.org>;
 Mon, 23 Mar 2020 09:40:27 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 6B2ED64ED8B
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 09:40:27 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.4) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 23 Mar 2020 09:40:27 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id C14E8804FB; Mon, 23 Mar 2020 09:40:11 +0100 (CET)
Date: Mon, 23 Mar 2020 09:40:11 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 09/11] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200323084011.GC4298@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
 <077a97942890b79fef2b271e889055fc07c74939.1584720678.git.alexander.riesen@cetitec.com>
 <CAMuHMdXiG1upHQrCcuZgNLFOEoeDVcb0zWxh1BZZST5TOURDBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXiG1upHQrCcuZgNLFOEoeDVcb0zWxh1BZZST5TOURDBQ@mail.gmail.com>
X-Originating-IP: [10.8.5.4]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7066
X-Provags-ID: V03:K1:/iphNME6k+3GblzZZvzNZ2t5hia/8XtXYCMVmakL2VockJxaFEr
 SYQDrCxFDrE10NAdQBGiV5Gxg2bjqO6n1FLqNFHaA05q85LEeFYm0t/tyTRJbh3wArUTicC
 phmFvK6QWt9KXjUdA++yiFzEAIg+jZKPo1X7XO4qF3SEY4J5hAGHqAiB/KSibGsdE1pF7Tj
 OduxiNQ9A3hgBGtWrAAcw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YnFyxfI5W6I=:HgututNNo8o+JroWd53Prt
 HDihm0H/RvcuswD6jMBy+jP/w9r5nlFoQgJbhohWW0tnlqKnTFXSgwqP8lIs0qpUxwC4/JlZO
 lxAbfOf53vCl5nIJnxdGk1ystfDuGFEelgIG3x3U9JPtLObN5bEbI2z6+Ha2ZmAJyuZX0trTX
 JhB8jSOqEDn8YiZotcIeIuTx+aQ9Sq79QS5Esrjbayp/Be54h9VInZV2rGYWRf4NQw/iXu7Hx
 cHVddTrAbblzmqDhQ1dxy4Ean5t7HrY737OoxX2Kq4gd1uC8tUPtLSDzUx7j6gpnNpRch/yET
 Spi4BCiSaExXErUpTkzlcVxCdRQvsaxwPFgIA3cXFK1F7q1sjg/CzmCk30Gs1FyYi3mrF+m+X
 2tGIh0LRe93JVLFBkX63W2RX5eDS067ltL7dpuc/vST1Ft5W+DCn8OY+2SBzt1QqemaaoSJKA
 mso7QZ04OS6RLSsoyRk0kNFRqgu8FQpAx6r770BzTTmFG7n0p+kixuszFqiNeNvAQUeukkb11
 NS2h8V8IKfovmmUsUHhAWwk7A+WbrzyhFvSNn3faf03dMyVFijWabkQSJZpyZOkWIz11b9bIY
 +RCa9E4GxsVtA239CiywlRyezj7lJTJ4lkDBXFs/VNM7fqhO2hUvGRv6spcntjtbJ5oEWyBMP
 E6/y/yZ8uedFh0Y+gdTpHkfyFuLVlSoraDD4rwvAaP8MfQhdziFWySN+hECNNO9jBf3LF3mu+
 VZX3aJxaD1FeDwAXRTjmc4Gj7R3ememGiMUyWKFMsry8u3QaAdL4rjMY/Gtl2LTmLwr6uNqYp
 K2p2osDwD6dgIlkojrd4nXvefW1TPVYsuG1/SaO54Av0hHI2G9CD8FmwbpUpIrT8snCeui/
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Geert Uytterhoeven, Mon, Mar 23, 2020 09:34:45 +0100:
> On Fri, Mar 20, 2020 at 5:43 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > As all known variants of the Salvator board have the HDMI decoder
> > chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> > endpoint and the connection definitions are placed in the common board
> > file.
> > For the same reason, the CLK_C clock line and I2C configuration (similar
> > to the ak4613, on the same interface) are added into the common file.
> >
> > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> 
> Did I provide a Reviewed-by?
> 
> > The driver provides only MCLK clock, not the SCLK and LRCLK,
> > which are part of the I2S protocol.
> >
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Perhaps you mixed it up with Laurent's?

Sorry. I actually did: he did provded Reviewed-by in his email, and you
did not. I was ... a little overwhelmed.

But you really did provide a lot of very useful information and it did help
to improve the code. Shall I remove the tag still?

Regards,
Alex


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
