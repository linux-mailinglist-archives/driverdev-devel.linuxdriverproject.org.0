Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67998338990
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 11:03:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08B836FAD1;
	Fri, 12 Mar 2021 10:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5T5V5BUM83Hs; Fri, 12 Mar 2021 10:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CF656F9BA;
	Fri, 12 Mar 2021 10:03:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 820621BF383
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 10:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D9A58450F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 10:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14fbB-tio1ZW for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 10:02:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C008884506
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:02:57 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12CA0EsK143158;
 Fri, 12 Mar 2021 10:02:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=akbLYMZRzQqZZpbJ+DtKwfG0zRi+SfnjQjeinw9NplI=;
 b=lYovsrs/X7GBkXTV9OEcuVPPBDNJLx1JaWxYK/kSgyQMi7uRNDQl5P9N5ZxOoVhXFAQP
 KPrWsnUpXfNgTQENI349Gi0EBewCqObDWW1eteu9i1iXnbSUrvV4sQXZmk5n1EUkrHeV
 dVr0F1jIznWu5PYUxzMjCIeM3rXQSHIszFau0x/4YKuYcn274SSgPkm9bj4msNCUQwLr
 /YJ94OON4U+aWefd8yVRplPRR6dfC/Wluxg2+w81U91nLA7RgdSHDixuCC6QwqcA124F
 bPOdqtvPUF8KXWB/Gg7AyC9gwzmPFVdqD4cABezfaPJ0PNUSues5Z8SMCmDB73GuFPKg 0g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 37415rhhgc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Mar 2021 10:02:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12CA1E9T070444;
 Fri, 12 Mar 2021 10:02:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 374kgwa7ax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Mar 2021 10:02:54 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 12CA2rBe026796;
 Fri, 12 Mar 2021 10:02:53 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 12 Mar 2021 02:02:52 -0800
Date: Fri, 12 Mar 2021 13:02:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hao Peng <penghaob@uniontech.com>
Subject: Re: [PATCH] staging: rtl8723bs: add initial value
Message-ID: <20210312100244.GN2087@kadam>
References: <20210311063838.19756-1-penghaob@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311063838.19756-1-penghaob@uniontech.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9920
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103120067
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9920
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 lowpriorityscore=0
 impostorscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 adultscore=0
 phishscore=0 spamscore=0 priorityscore=1501 bulkscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103120067
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
 izabela.bakollari@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 02:38:38PM +0800, Hao Peng wrote:
> Add initial value for some uninitialized variable and array.
> 

None of these are ever used uninitialized.  It's weird that you would
even think that.

>  			if (pmlmeext->active_keep_alive_check) {
> -				int stainfo_offset;
> +				int stainfo_offset = 0;
>  
>  				stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
                                ^^^^^^^^^^^^^^^^
This one is initialized on the very next line so all the patch does is
introduce static checker warnings for no reason.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
