Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324731EBBDA
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 14:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D27778820F;
	Tue,  2 Jun 2020 12:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMAjAfDz6bh0; Tue,  2 Jun 2020 12:39:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D90C87BC0;
	Tue,  2 Jun 2020 12:39:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D64F1BF33D
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A04087BC0
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpAAdQ21mzjY for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 12:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D77B287B4A
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 12:39:51 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052CcSIv001774;
 Tue, 2 Jun 2020 12:39:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+hHvUJaPYzsi+fcWNIuGDxfwGDP2NYDK2A8UukYwLsg=;
 b=uzsmwn7YqvyQ9EzQ2iEowprkxDu+h0QW+mTPgk/n+d/ws9CfK8jJe+OY/4p6ntObBilj
 Kv7SKNlgcxGB8BeOHAZd2jNNlIqiMWeq7PcQmXHQF2g8q2aeNA5c4dTwRuZVp4C/jPEd
 X1cyqsLoNmwDPfRnKVBIteRPu48AmNrF85QWtYyUXn7yrtPXMy5CnonvcdgjUcTv/TC/
 2R4LVXu55RXdqwP19B4SBQlT3S36d12TbEkA7ciWxs38ebbE2NiXIWKwYbVJyztFsrgB
 Qs2gdYJdTsALUuy+0NSoRBmnd8Gsn+QhsBfaVTn8Q407dniu+dRSdbGpQkMUbyTEFKr+ 5g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31dkruguax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 12:39:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052CcLPP008707;
 Tue, 2 Jun 2020 12:39:42 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31dju1bseu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 12:39:42 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052Cdflg021562;
 Tue, 2 Jun 2020 12:39:41 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 05:39:40 -0700
Date: Tue, 2 Jun 2020 15:39:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [RESEND PATCH v1 4/6] staging: greybus: audio: Resolve
 compilation error in topology parser
Message-ID: <20200602123930.GG30374@kadam>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
 <6131fec4cf9e18dbf70fa7f992de9d588299ee18.1591040859.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6131fec4cf9e18dbf70fa7f992de9d588299ee18.1591040859.git.vaibhav.sr@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 mlxscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 adultscore=0 mlxlogscore=999 cotscore=-2147483648 phishscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020089
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alex Elder <elder@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, greybus-dev@lists.linaro.org,
 Mark Brown <broonie@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 02, 2020 at 10:51:13AM +0530, Vaibhav Agarwal wrote:
> Fix compilation errors for GB Audio topology parser code with recent
> kernel versions.
> 
> Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> ---
>  drivers/staging/greybus/audio_topology.c | 130 +++++++++++------------
>  1 file changed, 61 insertions(+), 69 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 4ac30accf226..7d5e87341a5c 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -5,8 +5,8 @@
>   * Copyright 2015-2016 Linaro Ltd.
>   */
>  
> +#include <linux/greybus.h>
>  #include "audio_codec.h"
> -#include "greybus_protocols.h"
>  
>  #define GBAUDIO_INVALID_ID	0xFF
>  
> @@ -165,15 +165,15 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
>  	struct gbaudio_ctl_pvt *data;
>  	struct gb_audio_ctl_elem_info *info;
>  	struct gbaudio_module_info *module;
> -	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
> -	struct gbaudio_codec_info *gbcodec = snd_soc_codec_get_drvdata(codec);
> +	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
> +	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);

Please rename "gbcodec" in a different patch.  It's not related to
fixing the compile.

Otherwise it seems okay.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
