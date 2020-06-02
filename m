Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ADC1EBC30
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 14:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9279C8820A;
	Tue,  2 Jun 2020 12:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUISSp1pFYDc; Tue,  2 Jun 2020 12:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B70981BA7;
	Tue,  2 Jun 2020 12:57:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 894621BF33D
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 82C1120500
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 12:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hrFCqeS6DfhP for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 12:57:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id C45892012D
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 12:57:43 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052Cq4g5026266;
 Tue, 2 Jun 2020 12:57:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=GZDp8wmQt7YFI5yVG/apFRbBuqEEBQ8exPXA3c138bM=;
 b=bU4zfy0SbhOb+nqYhPsTEAFVkGDExsLmEB/8tMGfh8MnrFfpsF1j9nngBvou6GMxCvNA
 rWV3UZXnJwlTlw1Hy1RHTocBAk/NGmoUtzRqEcT69pLSdlqGO7ncq5pL7n2KyFc+8c1x
 TkACg+4YY95h2fxJYJ60jmieqyBw8V1QC7eblJnPHV6bbFXamahuIc43GyEt4txCIgJO
 jDRmApha7fit3F63FELdhKOCEPJrqGjAvk3G0wBPo6Ko9crKhhzXT1ekd+FzAvlCBsPZ
 g7Y5I1pmc27RStbmJ9FDNd0A61TLnzYmcMb9D2sUIGTCOVZPlHZrhNWahXBNIp21ND7P HQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31dkrugwvw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 12:57:34 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052Crvvq086376;
 Tue, 2 Jun 2020 12:57:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 31c25ntsb8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 12:57:33 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052CvShi031357;
 Tue, 2 Jun 2020 12:57:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 05:57:27 -0700
Date: Tue, 2 Jun 2020 15:57:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [RESEND PATCH v1 6/6] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Message-ID: <20200602125715.GI30374@kadam>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
 <77cfc355b87ee21636430f787764700de1983f38.1591040859.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77cfc355b87ee21636430f787764700de1983f38.1591040859.git.vaibhav.sr@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006020091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 mlxscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 adultscore=0 mlxlogscore=999 cotscore=-2147483648 phishscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020091
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

On Tue, Jun 02, 2020 at 10:51:15AM +0530, Vaibhav Agarwal wrote:
> Currently, GB codec and audio module is conditionally compiled based on
> GREYBUS_AUDIO_MSM8994. However, audio module is not dependent on MSM8994
> platform and can be used generically with any platform that follows
> GB Audio class specification.
> 
> Also, GB codec driver corresponds to dummy codec represented by I2S port
> available on Toshiba AP Bridge. Added config option for the same in
> kconfig file and accordingly updated Makefile.
> 

This commit message was a bit confusing to me.  Just say:

"Currently you can't enable the Grey Bus Audio Codec because there is no
entry for it in the Kconfig file.  Originally the config name was going
to be AUDIO_MSM8994 but that's not correct because other types of
hardware are supported now.  I have chosen the name AUDIO_APB_CODEC
instead.  Also I had to update the dependencies for GREYBUS_AUDIO to
make the compile work."

Otherwise this looks fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
