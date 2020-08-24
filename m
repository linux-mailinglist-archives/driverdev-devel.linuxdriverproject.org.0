Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A9124F929
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 11:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7A7B87898;
	Mon, 24 Aug 2020 09:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgjyMeke4z08; Mon, 24 Aug 2020 09:42:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB991879A1;
	Mon, 24 Aug 2020 09:42:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56D6C1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 09:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FF3588328
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 09:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPJwhOoWNA9k for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 09:42:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A68A879DA
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 09:42:05 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07O9dCqS169057;
 Mon, 24 Aug 2020 09:42:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=KfuuX0ksOpod8cUGK1VDYEIVywgUnLQvnvXblib2BjA=;
 b=zaCZ6k97YzVizbQax7KPKxfj6DR8KhM0/XJaw779zd4tE7aU2o8vnj9UutB/zRYgOcAR
 Nyrn1tJwb3y/vOfkJPO6XtjgP7+Np3RctTQS+LqCrC3SBQFaUnohszMYGjHNJ7zOn0al
 IoVghnyoSSxohvPgWKnk1bDiLCT3Uz8NAfe7QUPT5/OjJt8Bd3mpfbD6lmvYVzl7q6BZ
 Fq6/v+fjkklcDqNqSxWFYTRLOixFtQ/KRasCjWYWQKTnLdD7315G7XV/Jyk8r20i07R0
 2AmfK4FAKI3pOtCjswY6gIyR6bLCuEfDoVtJB0f1+f612AP7yCBtgFhVVy5M5TfKzl3t 0Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 333w6tj382-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Aug 2020 09:42:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07O9eirH040516;
 Mon, 24 Aug 2020 09:41:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 333r9hcyv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Aug 2020 09:41:59 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07O9fut1020170;
 Mon, 24 Aug 2020 09:41:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Aug 2020 02:41:55 -0700
Date: Mon, 24 Aug 2020 12:41:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH] staging: greybus: fix warnings detected by sparse
Message-ID: <20200824094148.GY1793@kadam>
References: <20200824025100.1068350-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824025100.1068350-1-coiby.xu@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 adultscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008240075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9722
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 impostorscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1011 mlxscore=0 lowpriorityscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008240075
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 24, 2020 at 10:50:59AM +0800, Coiby Xu wrote:
> This patch fix the following warnings from sparse,
> 
> $ make C=2 drivers/staging/greybus/
> drivers/staging/greybus/audio_codec.c:691:36: warning: incorrect type in initializer (different base types)
> drivers/staging/greybus/audio_codec.c:691:36:    expected unsigned long long [usertype] formats
> drivers/staging/greybus/audio_codec.c:691:36:    got restricted snd_pcm_format_t [usertype]
> drivers/staging/greybus/audio_codec.c:701:36: warning: incorrect type in initializer (different base types)
> drivers/staging/greybus/audio_codec.c:701:36:    expected unsigned long long [usertype] formats
> drivers/staging/greybus/audio_codec.c:701:36:    got restricted snd_pcm_format_t [usertype]
> drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
> drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
> drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:691:41:    expected unsigned int access
> drivers/staging/greybus/audio_topology.c:691:41:    got restricted __le32 [usertype] access
> drivers/staging/greybus/audio_topology.c:746:44: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:746:44:    expected unsigned int
> drivers/staging/greybus/audio_topology.c:746:44:    got restricted __le32
> drivers/staging/greybus/audio_topology.c:748:52: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:748:52:    expected unsigned int
> drivers/staging/greybus/audio_topology.c:748:52:    got restricted __le32
> drivers/staging/greybus/audio_topology.c:802:42: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:805:50: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:805:50:    expected restricted __le32
> drivers/staging/greybus/audio_topology.c:805:50:    got unsigned int
> drivers/staging/greybus/audio_topology.c:814:50: warning: restricted __le32 degrades to integer
> drivers/staging/greybus/audio_topology.c:817:58: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:817:58:    expected restricted __le32
> drivers/staging/greybus/audio_topology.c:817:58:    got unsigned int
> drivers/staging/greybus/audio_topology.c:889:25: warning: incorrect type in assignment (different base types)
> drivers/staging/greybus/audio_topology.c:889:25:    expected unsigned int access
> drivers/staging/greybus/audio_topology.c:889:25:    got restricted __le32 [usertype] access
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.c    |  4 ++--
>  drivers/staging/greybus/audio_module.c   |  2 +-
>  drivers/staging/greybus/audio_topology.c | 18 +++++++++---------
>  3 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 74538f8c5fa4..494aa823e998 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -688,7 +688,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
>  		.playback = {
>  			.stream_name = "I2S 0 Playback",
>  			.rates = SNDRV_PCM_RATE_48000,
> -			.formats = SNDRV_PCM_FORMAT_S16_LE,
> +			.formats = SNDRV_PCM_FMTBIT_S16_LE,
>  			.rate_max = 48000,
>  			.rate_min = 48000,
>  			.channels_min = 1,
> @@ -698,7 +698,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
>  		.capture = {
>  			.stream_name = "I2S 0 Capture",
>  			.rates = SNDRV_PCM_RATE_48000,
> -			.formats = SNDRV_PCM_FORMAT_S16_LE,
> +			.formats = SNDRV_PCM_FMTBIT_S16_LE,
>  			.rate_max = 48000,
>  			.rate_min = 48000,
>  			.channels_min = 1,

These changes need to be explained better.  We're changing formats from
2 to 1 << 2.

When you're writing commit messages, please imagine me as the target
audience.  I have a fairly decent understanding of the kernel and C, but
I don't know very much about the sound subsystem.

This code used to work, right?  How was it that changing a 2 to a 4
makes it better?  It needs to be explained in the commit message.  This
change probably needs to be split into a separate commit because it
seems different from the rest of the patch.

(Presumably the rest of the patch doesn't affect runtime on little
endian systems.  This is the part which affects runtime so it is
different from the rest).

> diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
> index 16f60256adb2..00848b84b022 100644
> --- a/drivers/staging/greybus/audio_module.c
> +++ b/drivers/staging/greybus/audio_module.c
> @@ -219,7 +219,7 @@ static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
>  
>  	greybus_set_drvdata(bundle, gbmodule);
>  	dai->id = 0;
> -	dai->data_cport = connection->intf_cport_id;
> +	dai->data_cport = cpu_to_le16(connection->intf_cport_id);
>  	dai->connection = connection;
>  	list_add(&dai->list, &gbmodule->data_list);
>  

This is correct, but I think you should change the two places which
print the data_cport to print the CPU endian value.

   327          list_for_each_entry(dai, &gbmodule->data_list, list) {
   328                  ret = gb_connection_enable(dai->connection);
   329                  if (ret) {
   330                          dev_err(dev,
   331                                  "%d:Error while enabling %d:data connection\n",
   332                                  ret, dai->data_cport);
   333                          goto disable_data_connection;
   334                  }
   335          }

   449          list_for_each_entry(dai, &gbmodule->data_list, list) {
   450                  ret = gb_connection_enable(dai->connection);
   451                  if (ret) {
   452                          dev_err(dev,
   453                                  "%d:Error while enabling %d:data connection\n",
   454                                  ret, dai->data_cport);
   455                          return ret;
   456                  }
   457          }

Otherwise it's slightly confusing to mix the values.

The rest of the patch seems fine to me.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
