Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D207819C5F9
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 17:35:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59A6B88CEA;
	Thu,  2 Apr 2020 15:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSQNOJcidSZc; Thu,  2 Apr 2020 15:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 925B088C92;
	Thu,  2 Apr 2020 15:35:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50B6F1BF592
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48BBE26424
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 15:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dmGzwey5lyzr for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 15:35:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id B7C7C20028
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 15:35:27 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEFCF-1jS2DG2pUb-00AHcI; Thu, 02 Apr 2020 17:35:07 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 7B9436506C3;
 Thu,  2 Apr 2020 15:35:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QCfSTkeeb5TN; Thu,  2 Apr 2020 17:35:06 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.8.5.56])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 1E4F064C974;
 Thu,  2 Apr 2020 17:35:06 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id D55D4804FB; Thu,  2 Apr 2020 17:35:05 +0200 (CEST)
Date: Thu, 2 Apr 2020 17:35:05 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v4 9/9] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200402153505.GC4291@pflmari>
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
 <20200402141654.GB4291@pflmari>
 <CAMuHMdV6a=adKVmmRm_3qOSA37kDRfc63G+qQpN4UR-hj3R65g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdV6a=adKVmmRm_3qOSA37kDRfc63G+qQpN4UR-hj3R65g@mail.gmail.com>
X-Provags-ID: V03:K1:8YcpPR4OX9VjeYg9XwNdrfmOZD058GNbrfPvpaIBOHzJfJ+xmAM
 fh2HDdf8RvrwuYJnOFdqhE71JK4Zi3noK4t+M2p8JEcBOVMjhMj+om4Ye2RMw9W/hTY6/U5
 cfXwpWIfghgX7MtDjnZSW2kGQ/pkyY8Za31J4qXGZR57YFinNmOztQjeJ4gCzE9imwCOGSR
 4fxm+XEG/l22liyDi8Gbg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:lWqBRcmjNbU=:JWGxbOm6nPXQMvdnEhikmQ
 nhJNzMtLTk7NcX7kT2Sc7y+M580IwwNDLerkGErta19bwOOQdDE2rGVJj5tuFxOi1ShWBlXXV
 mCdWxLMRh7o5sh6UPzAWR5LWjCAIn8vPYqnFUGOVXmaCFoJ5tWNCal6IDGSLCMHSQLKq9iiii
 Poz00LV9WMOZpo/WjL2ve+tVgiMViLSbVv7qmp1qPwtx3/rcxLAhyPZkT63nZvA9KpvwSIKEj
 +Lo4DX1ZK/uCw4vnmgT1jLperGGTot4UTKrz2p9+dpfFHQ+7LXP8dZxrcbJC3ZEtZ9IMc5RCF
 aqHbpvQJuTqZv7/A+hr9GGEwKKjygau7+kxS4v/FIY/a/NZJsJZOh2J12y82+AobMLyzqu/mX
 K9SGVZwDJ9FeNhaEeTqqB3DQOajOX44aOo8mV6ph4B5mTi/FYasNHQFot7wgwZjSBX4GsFKvr
 r47U7lebdUMbTIEskSB7qxsumiIwZq0xOovICU3gBeskC9rnN9S1uCLqo6DHtOD+kKQvSgSXl
 FJ4jGfGYlniXDsNH8oZjfEWpQJJafvuTHv67YsY3dIILXW+QL8rwAX//D3REYKykvUfBi2LDL
 PUYzMdKTC9xZG/HOmDL/dV6excVkYW2DqsHf/uyWo/+E9QxpR10pQb1hFKnWX0gyDoa3Ra5Ba
 ufNQSn6FW314LIrzZw8K9M1ZhJ3sBMzUQ4dgTgLhKtKCE1TD0j8ZyR6beHzPqtLhASMCUPWa6
 jRvB/dYz5AZ/dl121bPUR/oykSnjIrWAMK5ELmyNe9rpAjFPkaBPb9sJzrc7/qT4rIF7771kj
 N7nJwhIslg6j9bv+2FhGCRh2gR8YvyJ5WaTKBfeBWfnWqoh6+r3lyimj2bYonnjaJxxM+rG
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

Geert Uytterhoeven, Thu, Apr 02, 2020 17:26:15 +0200:
> On Thu, Apr 2, 2020 at 5:03 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > Geert Uytterhoeven, Mon, Mar 30, 2020 10:32:47 +0200:
> > > On Thu, Mar 26, 2020 at 11:55 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > > --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > > +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > > @@ -510,6 +511,15 @@ adv7482_txb: endpoint {
> > > >                                 remote-endpoint = <&csi20_in>;
> > > >                         };
> > > >                 };
> > > > +
> > > > +               port@c {
> > > > +                       reg = <12>;
> > > > +
> > > > +                       adv7482_i2s: endpoint {
> > > > +                               remote-endpoint = <&rsnd_endpoint3>;
> > > > +                               system-clock-direction-out;
> > > > +                       };
> > > > +               };
> > >
> > > As the adv748x driver just ignores "invalid" endpoints...
> > >
> > > > @@ -758,8 +769,19 @@ &rcar_sound {
> > > >                  <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
> > > >                  <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
> > > >                  <&audio_clk_a>, <&cs2000>,
> > > > -                <&audio_clk_c>,
> > > > +                <&adv7482_hdmi_in>,
> > > >                  <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
> > >
> > > ... and the rsnd driver ignores nonexistent-clocks, the DT change has no
> > > hard dependency on the driver change, and won't introduce regressions
> > > when included, right?
> >
> > Well, it maybe won't, but isn't it a little ... implicit?
> > And I'm no haste to include the changes, if you mean I can (or should) submit
> > the device tree patch separately.
> 
> OK, fine for me to postpone (that'll be for v5.9, I guess?).
> 

Looks scary :)
But yes, fine with me too.

v5 with ssi4 dummy in a moment.

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
