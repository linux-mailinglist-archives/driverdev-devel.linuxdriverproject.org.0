Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5918F134
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 09:51:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2AB386591;
	Mon, 23 Mar 2020 08:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmu4UVHBnuiG; Mon, 23 Mar 2020 08:51:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E14C1864AA;
	Mon, 23 Mar 2020 08:51:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 283401BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 204E5204A7
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 08:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2doQf4QaZN5z for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 08:50:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by silver.osuosl.org (Postfix) with ESMTPS id D6F7420458
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:50:19 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MacWq-1jnyuR1db0-00c65R for <devel@driverdev.osuosl.org>; Mon, 23 Mar
 2020 09:50:17 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id D65246503FF
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 08:50:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hFqjg82TAIKd for <devel@driverdev.osuosl.org>;
 Mon, 23 Mar 2020 09:50:16 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8771864E63D
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 09:50:16 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.4) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 23 Mar 2020 09:50:16 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id ED162804FB; Mon, 23 Mar 2020 09:50:00 +0100 (CET)
Date: Mon, 23 Mar 2020 09:50:00 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 09/11] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200323085000.GE4298@pflmari>
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
 <CAMuHMdXa96P+boX9HgGMBKEXLKK91t3Jgu-Sy8mP5A5--EeP=A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXa96P+boX9HgGMBKEXLKK91t3Jgu-Sy8mP5A5--EeP=A@mail.gmail.com>
X-Originating-IP: [10.8.5.4]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7066
X-Provags-ID: V03:K1:klEgJ6YPiJc1d7RQWIXvGUotaovT1LsbJvFds5tSpND++mAFCbo
 xXf7o6sf58XaqRxPYrxWK9wfijGaovYpMOJuwWHz4UGOmQH0sLCqtd+UmE2vvc92RMNBDia
 xG/9pOUULJx8aGyUivEedy5TnjxrMvP5CKXtlzOF2nv1gXN0eJu9FPP5/7BUMaRvs0ZdWbE
 +F+Q2JRz90Kgv67cj0H3g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:emiNc1CM1Tc=:+yoVWMhWZk3WXrvOsu3C6l
 PXlrdvsWN21if3y4/hnEcCO1R3mAT9f2aKC7MeFQaH0asxYGWMgP3xTh5eMUTa2nofV1LvD2n
 Wy1VtCwkp62UKXcZDagXwULeYWd3dGZFaV+RfAYaRj/mJlJ3jHlCVQjMxDpL4jQFeFSgOZsrT
 LoLG08K+mcbM3/VT29mJ6qnXaoYcRJ4m1MaxRVHRiXC1nFKVslZ8Cbx9kr5JmfkmsUhbwLnmb
 EN2OlJg27k1JZd3mJenPkxhUq873DHRq94BYZwstvQX3QKFS3DLuvVG8UHlB7fEzB9KP0+S7e
 ZTF0Kxayaz/JaIrw/iTVXGp81AUAR+Ch297B8WR6RKm6F3VoE2oDmgCkyirtY14jevmmqZmam
 zg03H2Ci0Rq8PFTGbenVfT8k5FyR0HE7pPtj62rtz/uKVkFEAqd3rXsNAhRzTbUReMgmPn7Sy
 xdQNDxkpZX3yE9n6f7BggGBduV78j89Agu5IB8/qdZKsNNulSqanRFMKOYpdnxJ2WYEI02Dya
 oQ/fbmOYcqQKYxckY+eeaeQQb251pzp/m+Uj507QE0iICScVinyaTdxEQRAip3fZI3EjE2CDf
 nzV+nCSVsh9qbxb8Pyal6+3cd/JAgS0xYipz2JAwYrcwI4/OB9xQMG14xIQvJTqm2jKI9N3pD
 cbfNYqaMjkVTiqWiFzFoR9eMyvm7IAV16fwh0qmatD6v1l7vXFxA/cnTWItdg/yWgkdtc9qu1
 vvldGCgjmCvHgxSZUZGHcdeeGOeBc5BvsdYbGMhG6rXajFDoBTqncLJ7CQzbB0XB91CaOlEl9
 VDb+K2057g7mkcjK4GsJ5r6O9zctMHkZRmhQlEKuiuRONETAupLdOpds/OS9dnouxGYyoXS
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

Hi Geert,

Geert Uytterhoeven, Mon, Mar 23, 2020 09:48:00 +0100:
> On Mon, Mar 23, 2020 at 9:41 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > Geert Uytterhoeven, Mon, Mar 23, 2020 09:34:45 +0100:
> > > On Fri, Mar 20, 2020 at 5:43 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > >
> > > Did I provide a Reviewed-by?
> > >
> > But you really did provide a lot of very useful information and it did help
> > to improve the code. Shall I remove the tag still?
> 
> Please do so.
> 
> While I can point out issues in audio patches, my audio-foo is not strong
> enough to provide an R-B, and I'll rely on the R-bs provided by others.

Done. I left the suggested-bys in the trailer. Hope those are alright.

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
