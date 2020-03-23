Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A4418F121
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 175CE22846;
	Mon, 23 Mar 2020 08:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTmFiXcZaCb0; Mon, 23 Mar 2020 08:46:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D9AA204A7;
	Mon, 23 Mar 2020 08:46:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C168F1BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCE6A87F7C
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3h3KSbwgqGG for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:46:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FB3287CEB
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:46:02 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBmDy-1j6N6K1qMG-00CB83 for <devel@driverdev.osuosl.org>; Mon, 23 Mar
 2020 09:46:00 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id E3CDA65021C
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaNDS2kjPtrq for <devel@driverdev.osuosl.org>;
 Mon, 23 Mar 2020 09:45:59 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 7C86464F4CD
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 09:45:59 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.4) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 23 Mar 2020 09:45:59 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id D7DA3804FB; Mon, 23 Mar 2020 09:45:43 +0100 (CET)
Date: Mon, 23 Mar 2020 09:45:43 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Kieran Bingham
 <kieran.bingham@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Laurent
 Pinchart" <laurent.pinchart@ideasonboard.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kuninori Morimoto
 <kuninori.morimoto.gx@renesas.com>, driverdevel <devel@driverdev.osuosl.org>, 
 Linux Media Mailing List <linux-media@vger.kernel.org>, "Linux Kernel Mailing
 List" <linux-kernel@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v3 09/11] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200323084543.GD4298@pflmari>
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
 <20200323084011.GC4298@pflmari>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323084011.GC4298@pflmari>
X-Originating-IP: [10.8.5.4]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7066
X-Provags-ID: V03:K1:ekaHameWs4Ivj0Re3rCESQ+2hMIlAeaMU+DjVeQa1lLbktNwlde
 OppiJBBV8fzL7rfv+WVVaAuC143Q8DI4Ar6O275B09KE1HjEVFQrFwmRACxp9oXOY+YNc/c
 bZ9KT4qTimqyo5t6M6Z1en4SKFqaY0iu8wzh34DczsZCRRu3WDizQQ4Qlc/KFhpF/yAnflp
 leuET+365ySXpYkS/RzaA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:pDVXlVnLHU0=:u02Uj2o8rO5XdP9B7tGwZ6
 o8IH2NtCetkEjKMKrGYiLLdJnFsVpaVVSmasXMo9yQDxkzX0QRb2e7bZIkUj8nBPPUcv+9r1c
 pz0pQg43dhBIBrp0mb/yfwG/KmDJR+X/x56OUXr6E6nj2O7Rgzl/FeQeDWkdckF2PM8Lupj4r
 5wtu5YApEKlSWHSRNBSH5tmdVPrqn/V/0pTSenlmnj7jc9tnCBKhtcbxt5KKb2zyuUDFqJMiS
 oFCoRggcKLWJgayim/eMQkya8ywx/sWHMDVUNDjvpOcTox7+CqaUIs49uxdvNDaAR9twBbWbN
 SulnntNWsInB+/ozT8+XVpCnwQ2AOomoQ3U4XSlzHeTgj+/wU+nwOF6967CC16rd3rtZtAd3x
 /VOwMHKrgDx/wiGHb/TTnvznxhYrpQHYOr3iDJMXd5y8ePaH+fJSu1rAr9i0nFKYQZEisVcak
 kTgZ61h0KTVDSKv7yfuH8yX4ygmjo7z6RoR3lfqitUhj4aTMwDlioeNj0+7GsjZtaFtMeqmtE
 6uax9XGbaPWoNqkNhUc0qYMDlJq8iqBGI4Xl2B59hmNDpPk4U838bH4fIJXs8kPLIW1uCLnVb
 Od5bSu4Skw/1/cjFoObPhcYiY+zh+WPP+XMDu6HkbylLsQ6oRCU0VNGtoqdG3LsW85WJuDjeV
 Qu49yPcRWnkXzI5ptqk48XMPd+n9FKRP2WyOBJvXdzhlivHoRR4kavUF5lwu/Kw67/N/R7nEC
 ZLGQE1yNJVJEGVsY5zqkpNA1VhlRxm4pVEMXZQQIPoeZXMFXq7DOe2myq5oAl0OOKTdOWCxuN
 5vDzqqayMEllHEIR0OmJ7J0u+epIGNRKqRkd1UoNC5kmRLRT5ssaAOUJ6Lxl0hfTDySRyAN
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Alex Riesen, Mon, Mar 23, 2020 09:40:11 +0100:
> Geert Uytterhoeven, Mon, Mar 23, 2020 09:34:45 +0100:
> > On Fri, Mar 20, 2020 at 5:43 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > As all known variants of the Salvator board have the HDMI decoder
> > > chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> > > endpoint and the connection definitions are placed in the common board
> > > file.
> > > For the same reason, the CLK_C clock line and I2C configuration (similar
> > > to the ak4613, on the same interface) are added into the common file.
> > >
> > > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > 
> > Did I provide a Reviewed-by?
> > 
> > > The driver provides only MCLK clock, not the SCLK and LRCLK,
> > > which are part of the I2S protocol.
> > >
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Perhaps you mixed it up with Laurent's?
> 
> Sorry. I actually did: he did provded Reviewed-by in his email, and you
> did not. I was ... a little overwhelmed.

It's even worse: even Laurent didn't provide his Reviewed-by for this
particular patch (it was bindings). Corrected.

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
