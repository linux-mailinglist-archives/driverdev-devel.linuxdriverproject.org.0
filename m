Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CED1218D4E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:52:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2941D87657;
	Fri, 20 Mar 2020 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTTJrZW85E5M; Fri, 20 Mar 2020 16:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9DB1874B0;
	Fri, 20 Mar 2020 16:52:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C770F1BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C405F886D5
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYtJ2ZFvJYbH for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:52:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70606886D0
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:52:37 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MMWcT-1ixOMO2IbP-00JarW for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:52:35 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 5AFD4650077
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GtR2U98k4WRF for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:52:35 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 0E22064C855
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:52:35 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:52:34 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 6E020804FB; Fri, 20 Mar 2020 17:15:39 +0100 (CET)
Date: Fri, 20 Mar 2020 17:15:39 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: adv748x: add information about
 serial audio interface (I2S/TDM)
Message-ID: <20200320161539.GM4344@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <c9ff553f804f178a247dca356306948e971432fb.1584639664.git.alexander.riesen@cetitec.com>
 <20200319180125.GJ14585@pendragon.ideasonboard.com>
 <20200320084406.GB4344@pflmari>
 <CAMuHMdUdVb0LwZDx-MH2FLYYPvgq=uj_3Nrzo9obWAi-Q-2ZnA@mail.gmail.com>
 <20200320090339.GD4344@pflmari>
 <20200320095907.GB5193@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320095907.GB5193@pendragon.ideasonboard.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7660
X-Provags-ID: V03:K1:Y1mKa9j2wkJdV51bOdtlEJ/GxVhpGGV0vXRBGH8+5nDcXERjd14
 Hs1XAUQHZlKcdAWWJOgoyHL9HGgdl+IdtRKTV4Txmq13LQ7O2myVwlaDV9QwEeqKqNVxw29
 scHyxcaXSj8QhAfUlXCvMkApR9oY4g8tfgf79nHVIcUfXwrsll9BeK2DGLRuNiymjbgCKEI
 UDjcKltMYtPys674ZWh4A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:owpfjmQcOPU=:ksvyV5CztrOeow7DkH/3Gz
 +1gLU8Ewfhe7ByQVbPDsWWvVR89nBvWExrgurA0zdwcC/7nxsi4wPecHbX4oFrvoZ4ldJDx9W
 NKqDkUJsczQwBsAqyoaX4YxMUMCwtxkHYnKlH5MrBxngCNmcR+fToSmPqijSc4PY0+tLDHX6b
 ThHUmJibmWnXZIRtwTkPZnnvwKvFNoKTbUjBXkT5nvXVVoJOT4pYFK7Y8+cd+YmhM0zxonZdc
 Ci83uLt8j0JChtb95PTSc1zORNLRe+hyOjR4agS6aP84b5z3XQiAmZFo9f3MM6+5Gn4tcUyG3
 aFwR51rJiZxV11nQnE/uPKEFlBvj29puDxjL9w1XPkE4lHODK9B0Vvev//tExL/gNiQwc5fU5
 RwNqPj2EL9jtzD1pD+kyKVNd1X3DuJ0fEyEMsqnUF77h1x0/co4x+1NLcbD2FtPsLsX8G05tj
 HjtwfEGv30nN8O/xbYpvJKZ3RJCRsqBdaXJ3ZFGw3CrXToUXDHBAPJvLn0Klk+1WKdBsNGo9g
 EuyQUj6DEHOQ3laFn5HPqcjfkOafWzmFNy2wnt31Ciw2HTHluUrx4mwmmVB8SbfvoaLTaQRi7
 IK0NTHCa5sLUuYdTNOZ2Tlc4t8U+Ij+g2mQEasqJW6vmqffOikHNsFbt1MBdI0pop1P5mKFkn
 NwhOXjNTcpD2B4KEcizyp0lbArfxdhhnpSpLXdCAgx5XC0gvlk3pnnTHE/zN0vTP/OrmMlz97
 NjA9KhkWorMmlpAirBhg2QlanDGYjJR7w6yDP4gRUOEvc4hoV3aYsbT5a0iZwPtYWQBXGGAKE
 +VohzsM/0QrxfQmfGbvYAWlq68esaYLoyu2kKCx6dP5U0G1hS4sFUNNxAPD95iYgeNTzSPt
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
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent,

Laurent Pinchart, Fri, Mar 20, 2020 10:59:07 +0100:
> On Fri, Mar 20, 2020 at 10:03:39AM +0100, Alex Riesen wrote:
> > Geert Uytterhoeven, Fri, Mar 20, 2020 09:48:14 +0100:
> > > 
> > > You'd be surprised how many board designers would consider this a cheap
> > > 12.288 MHz clock source, without using the I2S port ;-)
> > 
> > Well, I am :-)
> > 
> > Especially considering that the driver will not switch the MCLK pin aktive
> > (all I2S-related pins are tristate by default).
> 
> If the MCLK can't be output without enabling the I2S then I don't mind
> if we make the #clock-cells optional, although, as Geert mentioned,
> someone may still want to use it.

So I settled on just removing the option.

> > And how do I require it to be set unconditionally? By just removing the
> > "if ..." part of the statement?
> 
> Yes. For YAML it's easy too, the hard part is making properties
> conditional :-)

Converting it into YAML turned out a bit more than just reformatting:
some of the explicit bindings schema is only implied in the text format :-(

Takes a while to find out what is what.

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
