Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0290618C979
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 10:04:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54A9F86AC4;
	Fri, 20 Mar 2020 09:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tl6NVqkQ_HEp; Fri, 20 Mar 2020 09:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F84786427;
	Fri, 20 Mar 2020 09:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D31371BF298
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CB2082734A
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCYgi+9PiO8F for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:04:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by silver.osuosl.org (Postfix) with ESMTPS id 5EC7B2051E
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 09:04:00 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M7ehh-1jCDQW3SRx-007yVL; Fri, 20 Mar 2020 10:03:41 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id A47C164FAB0;
 Fri, 20 Mar 2020 09:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x-5ITaYeBHjU; Fri, 20 Mar 2020 10:03:40 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 36B6864F411;
 Fri, 20 Mar 2020 10:03:40 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 10:03:40 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 816CF8051E; Fri, 20 Mar 2020 10:03:39 +0100 (CET)
Date: Fri, 20 Mar 2020 10:03:39 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 07/10] dt-bindings: adv748x: add information about
 serial audio interface (I2S/TDM)
Message-ID: <20200320090339.GD4344@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUdVb0LwZDx-MH2FLYYPvgq=uj_3Nrzo9obWAi-Q-2ZnA@mail.gmail.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7764
X-Provags-ID: V03:K1:+c5uHQqjAAPvLBL8uGlPO7w2cxG5XARvcAeG5tV+1WSuK/v3k1v
 TKcEGeFtoTMqbgnfWh8ohKC3B3Vl7Rtc+nz0Sy8Qv0Iqt+OSofmWR/TJ5dObvjA+pOI7Vu9
 j0YkguCfdlieSLV7baZP3wPPS3azYeAjsimaO6cZ5r7D+bGA/YOZvJzxc3G37tZc3QIRJ9z
 CdpAwqkbKaO7YGZbPyMbg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:p099hMf9aNY=:qUne0yZBhfBH7BpGl+6Htu
 /DTcV1Sp181HSqNXmYOut6n/rBklQ/5Twxge1A7pEGPpUffwXFMLYwyqUez7Ktzmx8e5hfVSC
 7dUnWCZINCSX7C6TGsQhjn7LIrVpAynvHiNd85GL1LBJTzp4KbxBAC1DtLYAq2M7UyAHL+bUR
 q9x5aLE/E4fDztBUAu0oo4RMvwpK+LEsm1VLwBbeqH2i6qVXtJA2VAGLDWCvOE2eVEmwJM6EZ
 oZ+D80fm73H+/xu/c3Y+qBNL6Nt4nYRs6gqilgFZd+8oltfcPAM4ba8LWt8aB5WrWvOLWtUp9
 m7eVL4wcluZnCqAxWsIiYlXF2swF+idIIx8xqWprcViKowLBq/HWLX6EqZSzr+uEak60YtTUO
 AQ7Ed/qwM11KCrYxoeOiJdp+rOG3jVe0c1OI2LsUI4EkhbEGt/PyxDHkJLnR/t6At2bWdlpfI
 LqtyTVal2LIYnDFfd51cp/Q/gfSRjNnkPhw8z56/8P/nrczRVWifRrgVq6G+CvQ048Alv9ZJm
 7t31Hi8B+mOxsDD7tXG8DuuK4PDK9VRjxCadlg99fI5JKXBhgzhcYe2gm35Uy2vaqUpTUWMz7
 XdYVqUlQFVWYiebV6iXfXuaIuEckRrs4/o2KBH2lsOMZB0wxAppEsn1ktXsHyyNAOxw9tgrCl
 XOoOy9nCnJy4KXghc6eQI1WZfmnyGrL4iQE1E46AzPP9NSihLGAPAPuhCtL9jqCwjnX3Ij4yw
 l4HxfBXuxw9yOCoV7tk+i0RFRgY7QC00WpzfLqPNtf03GUFMjVdg9CORefpGDTqsyx+8Rn+O8
 z9aw57YjV7YaT+ef6FxSThoUQwJw1w32NGt9gb32RFvEzral7BtKhwPy1jDtK7El669kqEG
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

Geert Uytterhoeven, Fri, Mar 20, 2020 09:48:14 +0100:
> On Fri, Mar 20, 2020 at 9:44 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > Laurent Pinchart, Thu, Mar 19, 2020 19:01:25 +0100:
> > > On Thu, Mar 19, 2020 at 06:42:36PM +0100, Alex Riesen wrote:
> > > > As the driver has some support for the audio interface of the device,
> > > > the bindings file should mention it.
> 
> > > > @@ -16,6 +18,8 @@ Required Properties:
> > > >      slave device on the I2C bus. The main address is mandatory, others are
> > > >      optional and remain at default values if not specified.
> > > >
> > > > +  - #clock-cells: must be <0> if the I2S port is used
> > >
> > > Wouldn't it be simpler to set it to 0 unconditionally ?
> >
> > Would it? If the port itself is optional, shouldn't the clock be an option
> > too?
> 
> You'd be surprised how many board designers would consider this a cheap
> 12.288 MHz clock source, without using the I2S port ;-)

Well, I am :-)

Especially considering that the driver will not switch the MCLK pin aktive
(all I2S-related pins are tristate by default).

And how do I require it to be set unconditionally? By just removing the
"if ..." part of the statement?

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
