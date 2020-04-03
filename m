Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0851A19D563
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 13:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5EA63267A1;
	Fri,  3 Apr 2020 11:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPyUtZIO8Z9C; Fri,  3 Apr 2020 11:01:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8138E26316;
	Fri,  3 Apr 2020 11:01:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A18B1BF327
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 11:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83BE0871E4
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 11:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOjlEa4vEvob for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 11:01:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDF48871C6
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 11:01:32 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD5fd-1jSse22sxF-0097lj; Fri, 03 Apr 2020 13:01:15 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 924A7650C86;
 Fri,  3 Apr 2020 11:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ub0epFD3L4KN; Fri,  3 Apr 2020 13:01:14 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.8.5.74])
 by mail.cetitecgmbh.com (Postfix) with ESMTPSA id 358F8650C85;
 Fri,  3 Apr 2020 13:01:14 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id CB397804FB; Fri,  3 Apr 2020 13:01:13 +0200 (CEST)
Date: Fri, 3 Apr 2020 13:01:13 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: Re: [PATCH v5 1/9] media: adv748x: fix end-of-line terminators in
 diagnostic statements
Message-ID: <20200403110113.GC6164@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
 <2f2460435afa594ef417e70068b125af97ddca39.1585852001.git.alexander.riesen@cetitec.com>
 <a111380c-f563-8019-deb8-8916a679227b@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a111380c-f563-8019-deb8-8916a679227b@ideasonboard.com>
X-Provags-ID: V03:K1:Bbg/sa2nebGInCOzRlxsf3+du+x+7dB7nk+MdMDlTbL83H08v/+
 C9f3ILXi8lLdXtn5scD40ZkxYv1s2SuUikXF5mnVUDWwcctHbD8j3rC2XLQjQbG5FzgOZDa
 1fpz7hPvw8Wz5OPtK9/qDMg2vn5JPI4jYIbM+isfetbiadK/P3D+80OV/4KOdIiamIxDZ3f
 l2KuoVrEsIqMDfeAIrJtw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jo27tFzgTiw=:hJzObOQGhiuAozTgjKzMTs
 zAq11WEmyc5MTzKkMXU7PTXxotGKw68UoueTMgJS6ydaG/1guyTtA5Ff/2pmDkWqT8jYkqKDA
 3w92bV63COiQA6w+lc4lGZ1yAarXjUPZEAcP4W5zxH81SKpwtd63YptJi/k7ZlAKBpqdrVKtX
 iKmEU6eb1Cvc4lg9beV3Elm3N8RDzQGMYkvEitRzPcrbKlp+X/DeRl4nAfJPeMuJFBk7zIDhb
 18DZFPWOdxBFU0lhcIHecz5grtc+n4u0LVBERwNT+iVRFfRXZfxekIst/TVqVrPVGnCF1+yZW
 JIjYpkQe33IqFm9XJvxWMMeOjppHAWxRU2UZJBlG+F9gMxYoMXHpdTIm/veuQHrVqnZzBh32e
 CXiFqG9ns1HUihI9CbTCrcep9Z77GRh2E8y8dtsjZdLIGIKuRBGGG95s96QayriXx3EKMvnKq
 1uMjn3QbkUCQ+6vfJX/Hr4zwnz29ldNM2nnxxOw5nhu85YD3Yl3ypdl3m6Oko6NoLdSZFlCy5
 4fenZLcXqxBh6HRn3LTq/cDaMZadRoXOzjDvAkaaovu6ZT4P3vZdhjr+EuAcfzjh3hIZ9bX+s
 ngOpOG7yaYxkyVOcUELMY6tmgmzvEy122lr48zIALsAggE3TtKHoKKUD1isBlprww+fV5ItfW
 mRm1KgDwir/fHYhzyXvFqmW5JXFBS8EZ5+8wbdR+b0zFXzEXSSTX6kDmrI3AQO8AKtSO6Mqvq
 JqDuygHdgDsYCKl7JXcJ1l4Qwi7V+dUN7WyxlX//GkM7268dd0eb4VjLuKcTkDii0r0hS33+h
 63VXMcM/E4vcE6Y42h8Ih9PKz356a8xgnDrSvjCS1SUwydV+K/2dCiXRiWKmC62OkWfNunb
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
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Kieran Bingham, Fri, Apr 03, 2020 12:43:38 +0200:
> Hi Alex,
> 
> On 02/04/2020 19:34, Alex Riesen wrote:
> > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> I guess we could have also added this directly to the helper macros, but
> there is indeed already a mixed usage so either way would require fixups
> to be consistent.
> 
> So this is a good option ;-)

Not in this particular driver (unless I missed it), but yes, this was my main
motivation. Also size of unrelated changes in the patch series and I prefer to
have the ability to format diagnostics sequentially (also used it this time,
only removed the debugging traces later).

> Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

Thanks!

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
