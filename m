Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656E89214F
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 12:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 150B887C66;
	Mon, 19 Aug 2019 10:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Od2r8QbmUUEq; Mon, 19 Aug 2019 10:34:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84D2F8768B;
	Mon, 19 Aug 2019 10:34:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 515CD1BF36D
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DFDA855EF
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:34:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZc-xsa_YVcq for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 10:34:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 11ED3855DF
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 10:34:29 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7JAXe1I143126;
 Mon, 19 Aug 2019 10:34:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=+EL2o1Lhk5KY87l4wQICeVkEfT8XHCgRxPSVWeOEdC8=;
 b=DZtMfH7jDzDQtx3nDUNg7fH70qL/cugfKVkYjTNe1a1H121eeipPM+KWxEpG0d1tByxz
 Ke7AuVrOThZTP1QYl0a21NtZa+ARfIvWdUhaHySCS6FtCaZJ+GiLcbsM+zByawtDE0tl
 NhwZ/4Nj9oV++jBtprbidJKOjKK8njCnITq0lqMabiC+YCqeQI8Aq/SgQ+qXzF1B3Dx5
 62t/tz/L5Vfy2bizy3wO1Ji7FQ8a3wKAOISjjkZCidAcpoWCBWnXgiSPsQoAPl53csqT
 ukerk1XJu2pMMIXHh29o604WSDcHIzkL1ofS4V239QMpUY2bgcTVOCbY+R/QuRKloSTu QQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2uea7qegv6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 10:34:28 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7JAYIuB115126;
 Mon, 19 Aug 2019 10:34:27 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2ue6qec980-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 10:34:27 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7JAYQkT009012;
 Mon, 19 Aug 2019 10:34:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 19 Aug 2019 03:34:26 -0700
Date: Mon, 19 Aug 2019 13:34:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 15/15] drivers/acrn: add the support of offline SOS cpu
Message-ID: <20190819103417.GD4451@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-16-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-16-git-send-email-yakui.zhao@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908190121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908190121
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:56AM +0800, Zhao Yakui wrote:
> diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
> index 0602125..6868003 100644
> --- a/drivers/staging/acrn/acrn_dev.c
> +++ b/drivers/staging/acrn/acrn_dev.c
> @@ -588,6 +588,41 @@ static const struct file_operations fops = {
>  #define SUPPORT_HV_API_VERSION_MAJOR	1
>  #define SUPPORT_HV_API_VERSION_MINOR	0
>  
> +static ssize_t
> +offline_cpu_store(struct device *dev,
> +			struct device_attribute *attr,
> +			const char *buf, size_t count)
> +{
> +#ifdef CONFIG_X86
> +	u64 cpu, lapicid;
> +
> +	if (kstrtoull(buf, 0, &cpu) < 0)
> +		return -EINVAL;

Preserve the error code.

	ret = kstrtoull(buf, 0, &cpu);
	if (ret)
		return ret;

> +
> +	if (cpu_possible(cpu)) {

You can't pass unchecked cpu values to cpu_possible() or it results in
an out of bounds read if cpu is >= than nr_cpu_ids.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
