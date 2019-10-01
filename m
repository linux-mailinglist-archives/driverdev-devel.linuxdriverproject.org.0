Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF118C2F1A
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 10:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7115722179;
	Tue,  1 Oct 2019 08:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vX45xwY+fyg1; Tue,  1 Oct 2019 08:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E634D204DC;
	Tue,  1 Oct 2019 08:45:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E43E71BF981
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 08:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC74887C16
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 08:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FPAIQc3Vyeq
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 08:45:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5BB1D87CD6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 08:45:28 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x918XemY188847;
 Tue, 1 Oct 2019 08:45:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=APAh4l/bD2OIcpI3o+Ey3zVWGFs3cjNFkUiTTNj1CfY=;
 b=neQm+YqughkEgR11FxW3oaASm60ag43BME1vbmfLFK7GaizsTOxHLqbWA9HvrDrWN7UC
 KCwsvQ00dX0Pj2y3bwM16B6PC037hlZAsYnf76XT3DIgSe9QCrgB6z/pfuiczLXrv1nf
 GExYD8KZ32BxYPzyyUuyNgH40NRMxqPWQm+pVXq6guSbDHAb25fKMaTTr9Ghe5BAbswK
 gyp1Ns2FDOxaCg9YpJ9tDPVn9fNNUP/R9Fj3zm3mqF+Q+UpAsgSU4XpN5xShEiSg8BCi
 6WP6elUEh1WRbWe4ffC4zHvbHbowS8+ryv5473v+xNK25DXEsCkxAMNREQgIOHjauex8 Wg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2v9xxumbmd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 08:45:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x918WrPv006944;
 Tue, 1 Oct 2019 08:45:24 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2vbmpy3mw3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 08:45:24 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x918jLrR015935;
 Tue, 1 Oct 2019 08:45:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 01:45:20 -0700
Date: Tue, 1 Oct 2019 11:45:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191001084514.GJ27389@kadam>
References: <20190910184931.GA8228@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910184931.GA8228@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010083
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
 florian.c.schilhabel@googlemail.com, larry.finger@lwfiner.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 12:19:31AM +0530, Rohit Sarkar wrote:
> When the number of bytes to be printed exceeds the limit snprintf
> returns the number of bytes that would have been printed (if there was
> no truncation). This might cause issues, hence use scnprintf which
                  ^^^^^^^^^^^^^^^^^^^^^^^
Nope.  The code handles that situation fine so it will not cause issues.

> returns the actual number of bytes printed to buffer always.
> 
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index b08b9a191a34..ff5edcaba64d 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -142,7 +142,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
>  		memset(buf, 0, MAX_WPA_IE_LEN);
>  		n = sprintf(buf, "wpa_ie=");
>  		for (i = 0; i < wpa_len; i++) {
> -			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
> +			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
>  						"%02x", wpa_ie[i]);
>  			if (n >= MAX_WPA_IE_LEN)
                            ^^^^^^^^^^^^^^^^^^^
It checks for overflow here.  This check is impossible now and doesn't
make sense.  The other loop is similar.

>  				break;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
