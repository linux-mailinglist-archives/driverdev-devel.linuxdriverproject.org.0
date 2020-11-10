Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD682AD1A7
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 09:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FFB48722B;
	Tue, 10 Nov 2020 08:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uAsiInCiYUam; Tue, 10 Nov 2020 08:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3876871F5;
	Tue, 10 Nov 2020 08:48:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 366E71BF28E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 08:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 332918656A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 08:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTBMCbRJg7Xq
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 08:48:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F48686477
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 08:48:37 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AA8i0Vr106509;
 Tue, 10 Nov 2020 08:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=s+hJAXli69XNTgB1yyNotpVr2r6aS6woNcynLZYQpgg=;
 b=F0AIJ8xiWXFAIZJ6jIpmp6tDP/TTSIColLXc9W4hnqLT6x6Jx48KT/BmY1Yrw3a9hiXC
 tBEAm3JQ4VywNBn1+BLB6R1KqaPXj1DMtfDrEjbH47SgA+LJS5DXb4Ep7ViHqEzFUjln
 Ss3orseTra9n4Rw+N4RRfh5X+7f2YJaD7kT7HbuRqCb8oKYw2BvZ9SluvvXNWyFyFC8X
 y76c0aRM4ub0JY/SASt2HkFpKNEus5D6Tg7pSh3qluEqTl1cCeZ6MvqV/E0v4tuIG7HP
 Ph0dSV99YqiuunrZthczVhodiXXYQ4XIfbuzi3U7eJ/FaxHVNz60K1vVJFVFwPcT6/hX Uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 34nh3atety-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Nov 2020 08:48:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AA8jCUi196447;
 Tue, 10 Nov 2020 08:48:35 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 34p55n6b2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Nov 2020 08:48:34 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AA8mXiI014243;
 Tue, 10 Nov 2020 08:48:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Nov 2020 00:48:32 -0800
Date: Tue, 10 Nov 2020 11:48:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v2] drivers: most: add ALSA sound driver
Message-ID: <20201110084826.GE29398@kadam>
References: <1604680254-17185-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1604680254-17185-1-git-send-email-christian.gromm@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9800
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9800
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 priorityscore=1501
 clxscore=1011 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=2
 mlxlogscore=999 impostorscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100063
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 06, 2020 at 05:30:54PM +0100, Christian Gromm wrote:
> +static struct list_head adpt_list;
> +
> +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> +		       SNDRV_PCM_INFO_MMAP_VALID | \
> +		       SNDRV_PCM_INFO_BATCH | \
> +		       SNDRV_PCM_INFO_INTERLEAVED | \
> +		       SNDRV_PCM_INFO_BLOCK_TRANSFER)
> +
> +static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < (bytes / 2)) {
> +		dest[i] = swab16(source[i]);
> +		i++;
> +	}
> +}
> +
> +static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < bytes - 2) {

Can bytes ever be zero?  If so then this will corrupt memory and crash.

Generally "int i;" is less risky than "unsigned int i;".  Of course, I
recently almost introduced a situation where we were copying up to
ULONG_MAX bytes so there are times when iterators should be size_t so
that does happen.  It could be buggy either way is what I'm saying but
generally "unsigned int i;" is more often buggy.

> +		dest[i] = source[i + 2];
> +		dest[i + 1] = source[i + 1];
> +		dest[i + 2] = source[i];
> +		i += 3;
> +	}
> +}
> +
> +static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < bytes / 4) {
> +		dest[i] = swab32(source[i]);
> +		i++;
> +	}
> +}
> +
> +static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
> +{
> +	memcpy(most, alsa, bytes);
> +}
> +
> +static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy16(most, alsa, bytes);
> +}
> +
> +static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy24(most, alsa, bytes);
> +}
> +
> +static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy32(most, alsa, bytes);
> +}
> +
> +static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
> +{
> +	memcpy(alsa, most, bytes);
> +}
> +
> +static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy16(alsa, most, bytes);
> +}
> +
> +static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy24(alsa, most, bytes);
> +}
> +
> +static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
> +{
> +	swap_copy32(alsa, most, bytes);
> +}
> +
> +/**
> + * get_channel - get pointer to channel
> + * @iface: interface structure
> + * @channel_id: channel ID
> + *
> + * This traverses the channel list and returns the channel matching the
> + * ID and interface.
> + *
> + * Returns pointer to channel on success or NULL otherwise.
> + */
> +static struct channel *get_channel(struct most_interface *iface,
> +				   int channel_id)
> +{
> +	struct sound_adapter *adpt = iface->priv;
> +	struct channel *channel, *tmp;
> +
> +	list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
> +		if ((channel->iface == iface) && (channel->id == channel_id))
> +			return channel;

No need to use the _safe() version of this loop macro.  You're not
freeing anything.  My concern is that sometimes people think the _safe()
has something to do with locking and it does not.

> +	}
> +	return NULL;
> +}
> +

[ Snip ]

> +/**
> + * audio_probe_channel - probe function of the driver module
> + * @iface: pointer to interface instance
> + * @channel_id: channel index/ID
> + * @cfg: pointer to actual channel configuration
> + * @arg_list: string that provides the name of the device to be created in /dev
> + *	      plus the desired audio resolution
> + *
> + * Creates sound card, pcm device, sets pcm ops and registers sound card.
> + *
> + * Returns 0 on success or error code otherwise.
> + */
> +static int audio_probe_channel(struct most_interface *iface, int channel_id,
> +			       struct most_channel_config *cfg,
> +			       char *device_name, char *arg_list)
> +{
> +	struct channel *channel;
> +	struct sound_adapter *adpt;
> +	struct snd_pcm *pcm;
> +	int playback_count = 0;
> +	int capture_count = 0;
> +	int ret;
> +	int direction;
> +	u16 ch_num;
> +	char *sample_res;
> +	char arg_list_cpy[STRING_SIZE];
> +
> +	if (cfg->data_type != MOST_CH_SYNC) {
> +		pr_err("Incompatible channel type\n");
> +		return -EINVAL;
> +	}
> +	strlcpy(arg_list_cpy, arg_list, STRING_SIZE);
> +	ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
> +	if (ret < 0)
> +		return ret;
> +
> +	list_for_each_entry(adpt, &adpt_list, list) {
> +		if (adpt->iface != iface)
> +			continue;
> +		if (adpt->registered)
> +			return -ENOSPC;
> +		adpt->pcm_dev_idx++;
> +		goto skip_adpt_alloc;

It's weird how if the "channel = " allocation fails, then we free this
"adpt" which we didn't allocate.

> +	}
> +	adpt = kzalloc(sizeof(*adpt), GFP_KERNEL);
> +	if (!adpt)
> +		return -ENOMEM;
> +
> +	adpt->iface = iface;
> +	INIT_LIST_HEAD(&adpt->dev_list);
> +	iface->priv = adpt;
> +	list_add_tail(&adpt->list, &adpt_list);
> +	ret = snd_card_new(iface->driver_dev, -1, "INIC", THIS_MODULE,
> +			   sizeof(*channel), &adpt->card);
> +	if (ret < 0)
> +		goto err_free_adpt;
> +	snprintf(adpt->card->driver, sizeof(adpt->card->driver),
> +		 "%s", DRIVER_NAME);
> +	snprintf(adpt->card->shortname, sizeof(adpt->card->shortname),
> +		 "Microchip INIC");
> +	snprintf(adpt->card->longname, sizeof(adpt->card->longname),
> +		 "%s at %s", adpt->card->shortname, iface->description);
> +skip_adpt_alloc:
> +	if (get_channel(iface, channel_id)) {
> +		pr_err("channel (%s:%d) is already linked\n",
> +		       iface->description, channel_id);
> +		return -EEXIST;
> +	}
> +
> +	if (cfg->direction == MOST_CH_TX) {
> +		playback_count = 1;
> +		direction = SNDRV_PCM_STREAM_PLAYBACK;
> +	} else {
> +		capture_count = 1;
> +		direction = SNDRV_PCM_STREAM_CAPTURE;
> +	}
> +	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
> +	if (!channel) {
> +		ret = -ENOMEM;
> +		goto err_free_adpt;
> +	}
> +	channel->card = adpt->card;
> +	channel->cfg = cfg;
> +	channel->iface = iface;
> +	channel->id = channel_id;
> +	init_waitqueue_head(&channel->playback_waitq);
> +	list_add_tail(&channel->list, &adpt->dev_list);
> +
> +	ret = audio_set_hw_params(&channel->pcm_hardware, ch_num, sample_res,
> +				  cfg);
> +	if (ret)
> +		goto err_free_adpt;
> +
> +	ret = snd_pcm_new(adpt->card, device_name, adpt->pcm_dev_idx,
> +			  playback_count, capture_count, &pcm);

I don't see any snd_pcm_free() to match this snd_pcm_new().

> +
> +	if (ret < 0)
> +		goto err_free_adpt;
> +
> +	pcm->private_data = channel;
> +	strscpy(pcm->name, device_name, sizeof(pcm->name));
> +	snd_pcm_set_ops(pcm, direction, &pcm_ops);
> +	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_VMALLOC, NULL, 0, 0);
> +	return 0;
> +
> +err_free_adpt:
> +	release_adapter(adpt);
> +	return ret;
> +}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
