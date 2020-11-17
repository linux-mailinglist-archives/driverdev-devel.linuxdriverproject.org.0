Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A812B5B2C
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 09:44:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5148C8612B;
	Tue, 17 Nov 2020 08:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUsDq3WMyK4a; Tue, 17 Nov 2020 08:44:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34C6C86102;
	Tue, 17 Nov 2020 08:44:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E44E1BF341
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ECDC920386
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Sn6gOTN4Gey
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:43:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id D86252011B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:43:57 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH8eQtg181924;
 Tue, 17 Nov 2020 08:43:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UIaTnpK/qmKVm7vcU5vpkFMPDw3r++X1WsntYGNXDtA=;
 b=WQcLkaSQ8/TeIjfiX/kF9YUrMsqvNbK1O4n2mvVZ2kUPCHzJyhyixzXAUS/JpXTPoj9e
 ptEGC4NjGL3NMUa/Xv5bF6YZnalbZcDgFFfvcOXMZBnmMzH9KfEE1B8Se0WASy8haVHn
 1iAixZHm8sQB+/6uUG3mNFmMEtDZUxwXrx8/+48wO5BY7K3qqI0ZX705iC1twKcynSAw
 Ldepi8fE3848ixOmV/fDHvOtNzWjYeoC1P4vRILyy+GFvWQvxBCgQKpWprExaGJMMvnD
 Xc7FKhgOL2dk4Qga69KE6+cHL76JPgH/k02cHrHXaB/5XxtmWob15VSVCKp3pSzk/cOu 1g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 34t4rasc3t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Nov 2020 08:43:56 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AH8fewl164182;
 Tue, 17 Nov 2020 08:41:56 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 34uspt328a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Nov 2020 08:41:56 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AH8frD6010074;
 Tue, 17 Nov 2020 08:41:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Nov 2020 00:41:53 -0800
Date: Tue, 17 Nov 2020 11:41:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH v2] drivers: most: add ALSA sound driver
Message-ID: <20201117084145.GB29398@kadam>
References: <1604680254-17185-1-git-send-email-christian.gromm@microchip.com>
 <20201110084826.GE29398@kadam>
 <564d35a4fc32866f91f5bf3fb1bb16a5c67b3d9e.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <564d35a4fc32866f91f5bf3fb1bb16a5c67b3d9e.camel@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 suspectscore=3 adultscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9807
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1015
 malwarescore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 phishscore=0 suspectscore=3 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011170064
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

On Tue, Nov 17, 2020 at 08:08:50AM +0000, Christian.Gromm@microchip.com wrote:
> On Tue, 2020-11-10 at 11:48 +0300, Dan Carpenter wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Fri, Nov 06, 2020 at 05:30:54PM +0100, Christian Gromm wrote:
> > > +static struct list_head adpt_list;
> > > +
> > > +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> > > +                    SNDRV_PCM_INFO_MMAP_VALID | \
> > > +                    SNDRV_PCM_INFO_BATCH | \
> > > +                    SNDRV_PCM_INFO_INTERLEAVED | \
> > > +                    SNDRV_PCM_INFO_BLOCK_TRANSFER)
> > > +
> > > +static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < (bytes / 2)) {
> > > +             dest[i] = swab16(source[i]);
> > > +             i++;
> > > +     }
> > > +}
> > > +
> > > +static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < bytes - 2) {
> > 
> > Can bytes ever be zero?  If so then this will corrupt memory and crash.
> > 
> > Generally "int i;" is less risky than "unsigned int i;".  Of course, I
> > recently almost introduced a situation where we were copying up to
> > ULONG_MAX bytes so there are times when iterators should be size_t so
> > that does happen.  It could be buggy either way is what I'm saying but
> > generally "unsigned int i;" is more often buggy.
> > 
> > > +             dest[i] = source[i + 2];
> > > +             dest[i + 1] = source[i + 1];
> > > +             dest[i + 2] = source[i];
> > > +             i += 3;
> > > +     }
> > > +}
> > > +
> > > +static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < bytes / 4) {
> > > +             dest[i] = swab32(source[i]);
> > > +             i++;
> > > +     }
> > > +}
> > > +
> > > +static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     memcpy(most, alsa, bytes);
> > > +}
> > > +
> > > +static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy16(most, alsa, bytes);
> > > +}
> > > +
> > > +static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy24(most, alsa, bytes);
> > > +}
> > > +
> > > +static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy32(most, alsa, bytes);
> > > +}
> > > +
> > > +static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     memcpy(alsa, most, bytes);
> > > +}
> > > +
> > > +static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy16(alsa, most, bytes);
> > > +}
> > > +
> > > +static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy24(alsa, most, bytes);
> > > +}
> > > +
> > > +static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
> > > +{
> > > +     swap_copy32(alsa, most, bytes);
> > > +}
> > > +
> > > +/**
> > > + * get_channel - get pointer to channel
> > > + * @iface: interface structure
> > > + * @channel_id: channel ID
> > > + *
> > > + * This traverses the channel list and returns the channel matching the
> > > + * ID and interface.
> > > + *
> > > + * Returns pointer to channel on success or NULL otherwise.
> > > + */
> > > +static struct channel *get_channel(struct most_interface *iface,
> > > +                                int channel_id)
> > > +{
> > > +     struct sound_adapter *adpt = iface->priv;
> > > +     struct channel *channel, *tmp;
> > > +
> > > +     list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
> > > +             if ((channel->iface == iface) && (channel->id == channel_id))
> > > +                     return channel;
> > 
> > No need to use the _safe() version of this loop macro.  You're not
> > freeing anything.  My concern is that sometimes people think the _safe()
> > has something to do with locking and it does not.
> > 
> > > +     }
> > > +     return NULL;
> > > +}
> > > +
> > 
> > [ Snip ]
> > 
> > > +/**
> > > + * audio_probe_channel - probe function of the driver module
> > > + * @iface: pointer to interface instance
> > > + * @channel_id: channel index/ID
> > > + * @cfg: pointer to actual channel configuration
> > > + * @arg_list: string that provides the name of the device to be created in /dev
> > > + *         plus the desired audio resolution
> > > + *
> > > + * Creates sound card, pcm device, sets pcm ops and registers sound card.
> > > + *
> > > + * Returns 0 on success or error code otherwise.
> > > + */
> > > +static int audio_probe_channel(struct most_interface *iface, int channel_id,
> > > +                            struct most_channel_config *cfg,
> > > +                            char *device_name, char *arg_list)
> > > +{
> > > +     struct channel *channel;
> > > +     struct sound_adapter *adpt;
> > > +     struct snd_pcm *pcm;
> > > +     int playback_count = 0;
> > > +     int capture_count = 0;
> > > +     int ret;
> > > +     int direction;
> > > +     u16 ch_num;
> > > +     char *sample_res;
> > > +     char arg_list_cpy[STRING_SIZE];
> > > +
> > > +     if (cfg->data_type != MOST_CH_SYNC) {
> > > +             pr_err("Incompatible channel type\n");
> > > +             return -EINVAL;
> > > +     }
> > > +     strlcpy(arg_list_cpy, arg_list, STRING_SIZE);
> > > +     ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
> > > +     if (ret < 0)
> > > +             return ret;
> > > +
> > > +     list_for_each_entry(adpt, &adpt_list, list) {
> > > +             if (adpt->iface != iface)
> > > +                     continue;
> > > +             if (adpt->registered)
> > > +                     return -ENOSPC;
> > > +             adpt->pcm_dev_idx++;
> > > +             goto skip_adpt_alloc;
> > 
> > It's weird how if the "channel = " allocation fails, then we free this
> > "adpt" which we didn't allocate.
> 
> We actually did allocate it in a previous call to this function.
> Otherwise we would not jump to the skip_adpt_alloc label. And if
> we don't jump there, we are allocating it right away.
> 

I mean obviously everyone can see that it was allocated by an earlier
call to the function.  What I mean is that it's a layering violation.
The unwind would normally be done in the caller.

Is it okay to delete the adapter without emptying the mdev_link_list
as well?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
