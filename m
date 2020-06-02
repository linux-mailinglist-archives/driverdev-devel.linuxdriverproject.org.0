Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BC51EBBF7
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 14:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 219348765D;
	Tue,  2 Jun 2020 12:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hsn1BXJCk207; Tue,  2 Jun 2020 12:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E71EC86BAF;
	Tue,  2 Jun 2020 12:45:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE5021BF33D
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B43D320500
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpoTnRazBnLc for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 12:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id D89B9203C9
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 12:45:10 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052CacON189542;
 Tue, 2 Jun 2020 12:44:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UBDMz9NlvYHl649uFsBp8WuLVJ9aVdmnCyvloWHY3iI=;
 b=j5FBhoLTTvFUfwqLW06mrGaHCgTsehDy5lsbtZWAYbr/d0d1IyKDx2pdQXSkf5ws13gr
 GInvov+URNvOD1xqIM6l2KcUwqrLGSuQGSBwUwIdxJbazfiP5tRoB/QH3YfsB5oJyvnJ
 PbC/7MWs9QHUlC3jrTbzb77fDVI8FW8PF8eAN7m2dw235L+uKNksYu08+4fThRNO4ueX
 cw6fOmhE13jniYBnyXix2ZPxeWIFnhoIX1CxBczbbmJLp4tMN+vgYogosuN7mOL/TZtc
 LsWCd47DT0ZsRRKrmAcm+xAdVxqxo6J87129P8MCQOYBsjmF7+sfrvuw9LGR15bc+Thm 3w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31bfem3s7w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 12:44:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052CcLGU008671;
 Tue, 2 Jun 2020 12:44:58 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31dju1bycv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 12:44:58 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052CirVp022788;
 Tue, 2 Jun 2020 12:44:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 05:44:51 -0700
Date: Tue, 2 Jun 2020 15:44:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [RESEND PATCH v1 5/6] staging: greybus: audio: Add helper APIs
 for dynamic audio modules
Message-ID: <20200602124439.GH30374@kadam>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
 <c1339e4d57c8b39bd25197d4514fabd868b829b1.1591040859.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1339e4d57c8b39bd25197d4514fabd868b829b1.1591040859.git.vaibhav.sr@gmail.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
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

On Tue, Jun 02, 2020 at 10:51:14AM +0530, Vaibhav Agarwal wrote:
> +static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
> +				   const struct snd_kcontrol_new *controls,
> +				   int num_controls, const char *prefix)
> +{
> +	int i, err;
> +
> +	for (i = 0; i < num_controls; i++) {
> +		const struct snd_kcontrol_new *control = &controls[i];
> +		struct snd_ctl_elem_id id;
> +		struct snd_kcontrol *kctl;
> +
> +		if (prefix)
> +			snprintf(id.name, sizeof(id.name), "%s %s", prefix,
> +				 control->name);
> +		else
> +			strlcpy(id.name, control->name, sizeof(id.name));
> +		id.numid = 0;
> +		id.iface = control->iface;
> +		id.device = control->device;
> +		id.subdevice = control->subdevice;
> +		id.index = control->index;
> +		kctl = snd_ctl_find_id(card, &id);
> +		if (!kctl) {
> +			dev_err(dev, "%d: Failed to find %s\n", err,
> +				control->name);
> +			return -ENOENT;

I feel like this should be a continue instead of a return.

> +		}
> +		err = snd_ctl_remove(card, kctl);
> +		if (err < 0) {
> +			dev_err(dev, "%d: Failed to remove %s\n", err,
> +				control->name);
> +			return err;

Probably here as well.  The caller doesn't actually check for errors.

> +		}
> +	}
> +	return 0;
> +}

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
