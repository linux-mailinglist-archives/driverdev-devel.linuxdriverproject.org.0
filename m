Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CB81D4F59
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 15:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4E292EBD4;
	Fri, 15 May 2020 13:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OcZWEP+am1lV; Fri, 15 May 2020 13:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09B252E694;
	Fri, 15 May 2020 13:34:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E239F1BF2A1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEEB787561
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v4lkLNANG0DE for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 13:34:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9027487557
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 13:34:37 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04FDHCaw189812;
 Fri, 15 May 2020 13:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=bvCOtrlT3KuGFoRo5xNHnOKzuN1WQn5Zi9f9eT0ob+Y=;
 b=OuObXm34KPeWvimMtlSeVVJ0BzpcvIzJ6513QjvVtZDrwFJ4R3umpZmzVneeJ6jHldSJ
 Vetnu8gIjOES7FAmvCR87Ue1O4pnBPP+xs8OYEDFnV9lOk73DK09N2BhVmtkhTjk1sC4
 PiiTo/TYU38xQYyKPIM/9CXZJGyPYwcuo/f52aWwF4Ql1/e6fhP1mTcGCFHdpKdaqOFz
 rXetWniIg2tda9VdcXidJak/BdIpE8wv2oYKVbQy5JtHqiZHoixOfXKI5TN7L1mAW/6p
 9vK18QbBwKxSB08SBvev0u30pX80Wqzp6XQ0HXxBK3JvT6rKIxJF87Otm5epajcl1JkF Zg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 311nu5kgh2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 15 May 2020 13:34:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04FDI9qR059636;
 Fri, 15 May 2020 13:32:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3100yk1rmx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 May 2020 13:32:33 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04FDWVJW030293;
 Fri, 15 May 2020 13:32:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 15 May 2020 06:32:30 -0700
Date: Fri, 15 May 2020 16:32:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] Staging: rtl8723bs: os_de: if-else coding style issues
Message-ID: <20200515133224.GE2078@kadam>
References: <20200515124930.3406-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515124930.3406-1-john.oldman@polehill.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 bulkscore=0
 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005150116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=999 impostorscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 cotscore=-2147483648
 bulkscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005150116
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kai.heng.feng@canonical.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 15, 2020 at 01:49:30PM +0100, John Oldman wrote:
> @@ -1167,9 +1166,8 @@ void rtw_dev_unload(struct adapter *padapter)
>  			DBG_871X_LEVEL(_drv_always_, "%s: driver in IPS-FWLPS\n", __func__);
>  			pdbgpriv->dbg_dev_unload_inIPS_cnt++;
>  			LeaveAllPowerSaveMode(padapter);
> -		} else {
> +		} else
>  			DBG_871X_LEVEL(_drv_always_, "%s: driver not in IPS\n", __func__);
> -		}

You didn't run checkpatch on this patch.  The rule is that if one side
of the if else statement has curly braces then all sides get curly
braces even if they're just one line long.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
