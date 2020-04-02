Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B81B919C557
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 17:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 773CD2634D;
	Thu,  2 Apr 2020 15:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WISCVbO+fMJi; Thu,  2 Apr 2020 15:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 81255204F7;
	Thu,  2 Apr 2020 15:03:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCFC81BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B6608880E2
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ci+4dOh78Ado for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 15:03:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C10B880D2
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 15:03:27 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MybX9-1j7PZQ1xzp-00z00b; Thu, 02 Apr 2020 17:03:09 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 097A0650AA7;
 Thu,  2 Apr 2020 15:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qP8o4QmZzMyZ; Thu,  2 Apr 2020 17:03:07 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.8.5.56])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 9404064C938;
 Thu,  2 Apr 2020 17:03:07 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 68B12804FB; Thu,  2 Apr 2020 16:16:54 +0200 (CEST)
Date: Thu, 2 Apr 2020 16:16:54 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v4 9/9] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200402141654.GB4291@pflmari>
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
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
 <ad15f80df51c95a7c24498bb0bd3a46f55fbb62e.1585218857.git.alexander.riesen@cetitec.com>
 <CAMuHMdV+joeNWJotKySVPHNW9OoT8+iODBwhK5fACspq2SX_eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdV+joeNWJotKySVPHNW9OoT8+iODBwhK5fACspq2SX_eg@mail.gmail.com>
X-Provags-ID: V03:K1:Is5uJxMg3JOTXfihWmw/yAJXlIzEj/786Ut3euQGsigzUph1yio
 H5V1cBF7XgZEEeI7WsFwuZTxP2E6Hj6azmNrJh9qwFSuXDZ+zCCP81RCQlmSPJla0Sr6IY6
 QSzQfPaUUl+mZtQjwdOV8zhedWfwf9gToq+Iv9Gat4KWV8g7VMTdPkti9uvTMfDtvqBdOTd
 PDGuW+kIr2pCE6T9+kHjg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FPfBvf1WZKE=:2e0MwuWr49u0npND5T8YEM
 fXabhm3nmxL2DQkHlFFAFd/AZJcQQiHJROAR+13cGIK/BQ/5L5fhbKsr7QiYNSbpyhGhT1ZXC
 DruPJmtG+lW129VEWTRpAKIV5wDbNozyUjfNELnMLoLiIgZrFxhzuYtOI4hT+pTegAreOtXuY
 YfcTsBxuvY4dba3wKL2aYMR5m8DUoCn2hdNWbACXx4muJNO+uRItRcQSWagsMF3DlswZ5+Us2
 B0+yMDRs7PtQd3w0V3y33k3JPgrBXnZ4w558yfeHQLg4kIWRIHpFhFo8ChpuzQWXxM2F0vQlv
 HtSDfCZITzq7skt8OyjiMW/jnep2ho+Z9HY1Lxic6ZaS/c1oKGfmYEsa5yjLRoTRUFPiYRFGS
 4eWSizLGLgXzJCKL4UZjwwOQQo8F9tKigOvvEkmQqZszuPk2XWOxoop+EHnYkilEOa1eCL4sN
 axL1Vs/QBvg0L3KWDLUSBXyuPLu1Rafzc9r5rXt+ffN/w75EG6YkVVacAiZC3sBbn4PsgddkC
 uqAdlMvF1MSmd8W8OaNN1yeN3JuYYF4XRosNbKHSTjriS7k/zZvLxcWpWaZSh+szMs62045IH
 8VBAbwU/Wxez46XOtQkuodomLlPQ/dUWP7rllc2j8+g4nBltzexHbEmghcrGNssSjZT/zum//
 2jEC3qaNRVnKT06kQAI/jRiueES0WlRUmPhUre8tZGmxjSssxMHxNw5UWej9WOECkNcm3p8u4
 Yl88JIj+7JtrYyzm88d18pAMmJkOZHw1SaJDqUVASOi5RnYxHDytRQaYe/XrkIqzmlwid6o0T
 NeU6XqJ/1T6H0LTy6Lk4ke+UK68Rywv87xDbbBW0VOB/RHYoGHeNaIxr4Dl/Nmq4ENHwMYk
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
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Geert,

I'm sorry for late reply. Some unrelated happenings here in south Germany.

Geert Uytterhoeven, Mon, Mar 30, 2020 10:32:47 +0200:
> On Thu, Mar 26, 2020 at 11:55 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > @@ -510,6 +511,15 @@ adv7482_txb: endpoint {
> >                                 remote-endpoint = <&csi20_in>;
> >                         };
> >                 };
> > +
> > +               port@c {
> > +                       reg = <12>;
> > +
> > +                       adv7482_i2s: endpoint {
> > +                               remote-endpoint = <&rsnd_endpoint3>;
> > +                               system-clock-direction-out;
> > +                       };
> > +               };
> 
> As the adv748x driver just ignores "invalid" endpoints...
> 
> > @@ -758,8 +769,19 @@ &rcar_sound {
> >                  <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
> >                  <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
> >                  <&audio_clk_a>, <&cs2000>,
> > -                <&audio_clk_c>,
> > +                <&adv7482_hdmi_in>,
> >                  <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
> 
> ... and the rsnd driver ignores nonexistent-clocks, the DT change has no
> hard dependency on the driver change, and won't introduce regressions
> when included, right?

Well, it maybe won't, but isn't it a little ... implicit?
And I'm no haste to include the changes, if you mean I can (or should) submit
the device tree patch separately.

> > @@ -777,6 +799,21 @@ rsnd_endpoint0: endpoint {
> >                                 capture  = <&ssi1 &src1 &dvc1>;
> >                         };
> >                 };
> > +               rsnd_port3: port@3 {
> > +                       reg = <3>;
> > +                       rsnd_endpoint3: endpoint {
> > +                               remote-endpoint = <&adv7482_i2s>;
> > +
> > +                               dai-tdm-slot-num = <8>;
> > +                               dai-tdm-slot-width = <32>;
> > +                               dai-format = "left_j";
> > +                               mclk-fs = <256>;
> > +                               bitclock-master = <&adv7482_i2s>;
> > +                               frame-master = <&adv7482_i2s>;
> > +
> > +                               capture = <&ssi4>;
> > +                       };
> > +               };
> >         };
> >  };
> 
> However, as salvator-common.dtsi is shared by all Salvator-X(S) variants,
> you'll have to add a dummy ssi4 node to r8a77961.dtsi first.

I see. There are even two dummy SSI nodes already. I would prefer to submit
the change together with other Salvator device tree changes. Is that alright?

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
