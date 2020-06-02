Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D021EBB59
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 14:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5ED7188176;
	Tue,  2 Jun 2020 12:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HiHlDbYTzmme; Tue,  2 Jun 2020 12:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C53E7880F5;
	Tue,  2 Jun 2020 12:14:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241C21BF33D
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20A9C86031
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6wXvryi67Kg for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 12:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5600E85D90
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 12:14:48 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052C8YZ6140455;
 Tue, 2 Jun 2020 12:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=NBE5+I4CqSHnayNrwmdJkxTE42E3YIjg8dJCdAw1TJU=;
 b=gBXOsgmf8FV/AzhHnNbmOfepIOv0bn23ch5lZ5gXg2RoRNBZ3i9IMHxyDXG3NfSj7lmE
 OeT66XV6gaNNzQRYJRV/W/ZXc5UPAjjbTYk0oS8Zr0ruHRfM3E0Oz+ErB9n+2lEBjGmP
 WvV0M/x/exOU5ccpNbFMyzfBSWZm+Uqw7oSlOR4qQMz0yg4ZFvEuO78meDkJMApLcmei
 NJqc8sqdtyw4scElos6VsVNYSPQAt3aiJAP1mzQqFn1liAoh2rCw8aBMvGRzQwMSLGJL
 qayqxwY22iPO3Enxg4xZdNAZMIjFwE28OLdIEc1dc98RxhtSF6daaAi0LymCV5nDiX/e ew== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31bfem3n7r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 12:14:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052CDwcT120702;
 Tue, 2 Jun 2020 12:14:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31dju1as04-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 12:14:36 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052CERfW006908;
 Tue, 2 Jun 2020 12:14:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 05:14:26 -0700
Date: Tue, 2 Jun 2020 15:14:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [RESEND PATCH v1 2/6] staging: greybus: audio: Maintain jack
 list within GB Audio module
Message-ID: <20200602121417.GE30374@kadam>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
 <ccb39352a30ab39df1534efafc9415aa89b156fa.1591040859.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccb39352a30ab39df1534efafc9415aa89b156fa.1591040859.git.vaibhav.sr@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=2
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020087
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

On Tue, Jun 02, 2020 at 10:51:11AM +0530, Vaibhav Agarwal wrote:
> As per the current implementation for GB codec driver, a jack list is
> maintained for each module. And it expects the list to be populated by
> the snd_soc_jack structure which would require modifications in
> mainstream code.
> 
> However, this is not a necessary requirement and the list can be easily
> maintained within gbaudio_module_info as well. This patch provides the
> relevant changes for the same.
> 
> Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.c  | 76 ++++++++++++++------------
>  drivers/staging/greybus/audio_codec.h  | 10 +++-
>  drivers/staging/greybus/audio_module.c | 20 ++++---
>  3 files changed, 60 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index ebf8484f0ae7..a2ee587e5a79 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -712,7 +712,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  			     struct snd_soc_card *card)
>  {
>  	int ret;
> -
> +	struct gbaudio_jack *gba_jack, *n;
>  	struct snd_soc_jack *jack;

Because we got rid of the jack pointer then we can re-use the name here.

	struct gbaudio_jack *jack, *n;

We still don't want the "struct snd_soc_jack *jack;" pointer.

>  	struct snd_soc_jack_pin *headset, *button;
>  
> @@ -728,7 +728,8 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  
>  	headset->pin = module->jack_name;
>  	headset->mask = module->jack_mask;
> -	jack = &module->headset_jack;
> +	gba_jack = &module->headset;
> +	jack = &gba_jack->jack;

Use module->headset.jack directly.

>  
>  	ret = snd_soc_card_jack_new(card, module->jack_name, module->jack_mask,
>  				    jack, headset, 1);
> @@ -737,6 +738,9 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  		return ret;
>  	}
>  
> +	/* Add to module's jack list */
> +	list_add(&gba_jack->list, &module->jack_list);


Here as well.

> +
>  	if (!module->button_mask)
>  		return 0;
>  
> @@ -745,20 +749,24 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  	button = devm_kzalloc(module->dev, sizeof(*headset), GFP_KERNEL);
>  	if (!button) {
>  		ret = -ENOMEM;
> -		goto free_headset;
> +		goto free_jack;

Let's call the label "free_jacks" (plural).

>  	}
>  
>  	button->pin = module->button_name;
>  	button->mask = module->button_mask;
> -	jack = &module->button_jack;
> +	gba_jack = &module->button;
> +	jack = &gba_jack->jack;
>  
>  	ret = snd_soc_card_jack_new(card, module->button_name,
>  				    module->button_mask, jack, button, 1);
>  	if (ret) {
>  		dev_err(module->dev, "Failed to create button jack\n");
> -		goto free_headset;
> +		goto free_jack;
>  	}
>  
> +	/* Add to module's jack list */
> +	list_add(&gba_jack->list, &module->jack_list);
> +
>  	/*
>  	 * Currently, max 4 buttons are supported with following key mapping
>  	 * BTN_0 = KEY_MEDIA
> @@ -768,58 +776,55 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
>  	 */
>  
>  	if (module->button_mask & SND_JACK_BTN_0) {
> -		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_0,
> +		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_0,
>  				       KEY_MEDIA);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_0\n");
> -			goto free_button;
> +			goto free_jack;
>  		}
>  	}
>  
>  	if (module->button_mask & SND_JACK_BTN_1) {
> -		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_1,
> +		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_1,
>  				       KEY_VOICECOMMAND);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_1\n");
> -			goto free_button;
> +			goto free_jack;
>  		}
>  	}
>  
>  	if (module->button_mask & SND_JACK_BTN_2) {
> -		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_2,
> +		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_2,
>  				       KEY_VOLUMEUP);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_2\n");
> -			goto free_button;
> +			goto free_jack;
>  		}
>  	}
>  
>  	if (module->button_mask & SND_JACK_BTN_3) {
> -		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_3,
> +		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_3,
>  				       KEY_VOLUMEDOWN);
>  		if (ret) {
>  			dev_err(module->dev, "Failed to set BTN_0\n");
> -			goto free_button;
> +			goto free_jack;
>  		}
>  	}
>  
>  	/* FIXME
>  	 * verify if this is really required
>  	set_bit(INPUT_PROP_NO_DUMMY_RELEASE,
> -		module->button_jack.jack->input_dev->propbit);
> +		module->button->jack->jack->input_dev->propbit);
>  	*/
>  
>  	return 0;
>  
> -free_button:
> -	jack = &module->button_jack;
> -	snd_device_free(card->snd_card, jack->jack);
> -	list_del(&jack->list);
> -
> -free_headset:
> -	jack = &module->headset_jack;
> -	snd_device_free(card->snd_card, jack->jack);
> -	list_del(&jack->list);
> +free_jack:
> +	list_for_each_entry_safe(gba_jack, n, &module->jack_list, list) {
> +		jack = &gba_jack->jack;
> +		snd_device_free(card->snd_card, jack->jack);

Since we renamed "gba_jack" to "jack" then this becomes:

		snd_device_free(card->snd_card, jack->jack.jack);

Which is sort of weird, but still okay.

> +		list_del(&gba_jack->list);
> +	}
>  
>  	return ret;
>  }
> @@ -829,6 +834,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
>  	int ret;
>  	struct snd_soc_codec *codec;
>  	struct snd_card *card;
> +	struct gbaudio_jack *gba_jack = NULL;

Don't introduce unused assignments.  It just silences static checker
warnings about uninitialized variables and introduces bugs.

Anyway, the same comments for the rest of the patch.  Please don't
introduce so many variables which aren't required and which hurt
grep-ability.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
