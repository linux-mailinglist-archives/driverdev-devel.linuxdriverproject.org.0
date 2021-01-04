Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436092E9069
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 07:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27A628709A;
	Mon,  4 Jan 2021 06:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThzpM1rY0whp; Mon,  4 Jan 2021 06:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5991387099;
	Mon,  4 Jan 2021 06:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 417F71BF369
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 06:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DF7986686
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 06:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2VSPBZthJ-Pb for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 06:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B39286685
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 06:22:35 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1046MU92156425;
 Mon, 4 Jan 2021 06:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=i3zLV37UoQGBxAAUgHBj/zVXWGYnaznsGYKDdTlH6Nw=;
 b=pdrcOjFamTYR+RdUDQaF1PJygf83I/A4YBJAbE1bmmlD4fkM0+NU/HKt9WoK5Jdw8WZ4
 hS0HW8vBO7luAwbX2rlfLeFdk1kdo50eP9YDifLjdtbgwBd6S9uttPFQLS/7XgxW3a90
 2fDitN/vJM2qG2jOZy/NK2UgvaZk2hwhY9ves/TLG/IjEmgP94Hsy3esUg5w6S9BGduM
 +B1WUtBQJ0iJPZHN5muGoP4pjM0QdxL5aVFM2iPqQd1O8tYr2TDjttUjlg4rWEap2cRS
 Ei9DvORCJMF82zHC2QNBdXyaRy5CKKJfgDLRXPbAyrySzgvR3JbevOLlRb7H9k4LvJx1 fw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 35tg8qtumw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 04 Jan 2021 06:22:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1046KILc169108;
 Mon, 4 Jan 2021 06:22:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 35uvcn24n7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Jan 2021 06:22:29 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1046MMld020483;
 Mon, 4 Jan 2021 06:22:22 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 04 Jan 2021 06:22:22 +0000
Date: Mon, 4 Jan 2021 09:22:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] staging: greybus: fix stack size warning with UBSAN
Message-ID: <20210104062203.GP2831@kadam>
References: <20210103223541.2790855-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210103223541.2790855-1-arnd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101040043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 phishscore=0 bulkscore=0
 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 mlxscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101040042
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
 Arnd Bergmann <arnd@arndb.de>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Johan Hovold <johan@kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 03, 2021 at 11:35:32PM +0100, Arnd Bergmann wrote:
> @@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
>  	strlcpy(temp_name, w->name, NAME_SIZE);
>  	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
>  
> +	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
                    ^^

Off by one.  >= here.


> +		ret = -EINVAL;
> +		goto error;
> +	}
> +	*dw = gbaudio_widgets[w->type];
> +	dw->name = w->name;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
