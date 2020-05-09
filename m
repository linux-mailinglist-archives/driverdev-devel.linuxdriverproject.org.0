Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FDA1CC172
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 May 2020 14:52:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9BB987FA5;
	Sat,  9 May 2020 12:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHaIKwniqnB1; Sat,  9 May 2020 12:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF59A87FE5;
	Sat,  9 May 2020 12:52:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93EBC1BF3DD
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 12:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9027286F80
 for <devel@linuxdriverproject.org>; Sat,  9 May 2020 12:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hGnODJjawSrL for <devel@linuxdriverproject.org>;
 Sat,  9 May 2020 12:52:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57DE386F7E
 for <devel@driverdev.osuosl.org>; Sat,  9 May 2020 12:52:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 13BBF2A2CA6
Message-ID: <458fcdc1d934c12a81a3bd9728cdca9cd2ad874c.camel@collabora.com>
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Helen Koike
 <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Sat, 09 May 2020 09:51:49 -0300
In-Reply-To: <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
 <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
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
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 jbx6244@gmail.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hans,

On Fri, 2020-04-17 at 09:18 +0200, Hans Verkuil wrote:
> On 03/04/2020 18:15, Helen Koike wrote:
> > The Rockchip ISP bindings was moved out of staging.
> > Update MAINTAINERS file with the new path.
> 
> Shouldn't there be a reference to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> as well in MAINTAINERS?
> 

Indeed, and I can take care of that later. I was planning to move
this PHY driver out of staging, but was waiting on patches 4 and 5
of this series.

They seem fine, would you mind picking them?

Thanks!
Ezequiel

> Regards,
> 
> 	Hans
> 
> > Suggested-by: Johan Jonker <jbx6244@gmail.com>
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > ---
> > 
> > V2:
> > - This is a new patch in the series
> > ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d66ac41ef5872..726044b84cf23 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
> >  L:	linux-media@vger.kernel.org
> >  S:	Maintained
> >  F:	drivers/staging/media/rkisp1/
> > +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >  
> >  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> >  M:	Jacob Chen <jacob-chen@iotwrt.com>
> > 
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
