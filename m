Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B6F1F5ABF
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 19:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98616873F2;
	Wed, 10 Jun 2020 17:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhCrMJycoN_q; Wed, 10 Jun 2020 17:46:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56C1F86C26;
	Wed, 10 Jun 2020 17:46:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF1E1BF5A9
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68BA686BCC
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 17:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHqJCt-s_s4w for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 17:46:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 358FE86BBC
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 17:46:05 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05AHgSRg117414;
 Wed, 10 Jun 2020 17:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=bh8nRt1h0Qm9YLYmWJZrmpvVO8pZdtpV1B7rl5d/bQ8=;
 b=FGWALejkISxJxpEpJrf8+0+MJhbzo9hCw7OBEl7AtnZxwTJFFyEjm4LJwMTCTlLFgRUW
 m+JUZHyey6kjQY0hu8nLAkFDNdpIdqLhHLo8OfvrNhFBgwvdzNbUGE6l87HE/t/yXbud
 4D2dSKDY4pENNtfUvqmgr44q11BQhQ5e4nQfu7d2UQQLh9JvdnoTgBoNMnmfD6193YBa
 60a9JVEI0UqhatMKd284cu3Ru0s0wl9pB5X2b3KZSm6u9sd2vZP3sitqdiElVU8rT3gA
 ENs84eDnBNVuhu/C0lBsM9R3qIqjN21cxrSAAp+AOfxACrYPckKT9Fn82f2wNasI/fO0 Rg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31g2jrbs3c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 17:45:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05AHiR8H109394;
 Wed, 10 Jun 2020 17:45:54 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31gmwtm39q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jun 2020 17:45:54 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05AHjjda010613;
 Wed, 10 Jun 2020 17:45:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Jun 2020 10:45:44 -0700
Date: Wed, 10 Jun 2020 20:45:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2 4/6] staging: greybus: audio: Resolve compilation
 error in topology parser
Message-ID: <20200610174535.GB4151@kadam>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <7cbb81585474e895faa842e2af05ec3fb2079386.1591802243.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cbb81585474e895faa842e2af05ec3fb2079386.1591802243.git.vaibhav.sr@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006100136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 impostorscore=0
 cotscore=-2147483648 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006100136
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

On Wed, Jun 10, 2020 at 10:58:28PM +0530, Vaibhav Agarwal wrote:
> @@ -437,11 +433,12 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  	struct gbaudio_module_info *module;
>  	struct snd_soc_dapm_widget_list *wlist = snd_kcontrol_chip(kcontrol);
>  	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
> -	struct snd_soc_codec *codec = widget->codec;
> -	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
> +	struct device *codec_dev = widget->dapm->dev;
> +	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
> +	struct snd_soc_dapm_update *update = NULL;
                                    ^^^^^^^^^^^^^

>  	struct gb_bundle *bundle;
>  
> -	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
> +	dev_dbg(codec_dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
>  	module = find_gb_module(gb, kcontrol->id.name);
>  	if (!module)
>  		return -EINVAL;
> @@ -458,17 +455,13 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  	max = le32_to_cpu(info->value.integer.max);
>  	mask = (1 << fls(max)) - 1;
>  	val = ucontrol->value.integer.value[0] & mask;
> -	connect = !!val;
>  
>  	/* update ucontrol */
>  	if (gbvalue.value.integer_value[0] != val) {
>  		for (wi = 0; wi < wlist->num_widgets; wi++) {
>  			widget = wlist->widgets[wi];
> -
> -			widget->value = val;
> -			widget->dapm->update = NULL;
> -			snd_soc_dapm_mixer_update_power(widget, kcontrol,
> -							connect);
> +			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
> +							val, update);
                                                             ^^^^^^
Always NULL.  Just delete the update variable.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
