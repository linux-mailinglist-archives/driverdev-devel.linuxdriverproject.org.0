Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCDF209D04
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 12:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C258788046;
	Thu, 25 Jun 2020 10:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1vyIES2hDMG; Thu, 25 Jun 2020 10:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4628E87DCE;
	Thu, 25 Jun 2020 10:46:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EB031BF328
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 10:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8783A22DB0
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 10:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ja+xsvMLw475 for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 10:46:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id D64FB22091
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 10:46:47 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05PAg4KA131159;
 Thu, 25 Jun 2020 10:46:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kKnkawHs9D3XzcfgBrkpg1Fqr7essiPNcN1eb5llbcg=;
 b=VQAC3NUrn3TdldDG+/uyaBOgUBjeKd+os5BEN3V4/T9U4Gr9zLsR3yY9qlW4Xo74qx0U
 nt6edK6FSDvCjDxc+oAk9KvkPd6dENLNrN7r4LzNv29fGsempBCpDcGP3zzZgEjCdvtY
 qacDQLlDyRP54yRm5OftWjbKvHF/XtXy0qwelt8Mc6Gez1ThMnhmJmKZe+mwpLwcKeg+
 gQwtybCc+yEJGHYB7vbhTAcNY9dcAkycfMwMMkTeWmQK129A8FIJWamtWHZaOLa2ftlv
 LdsgIBuhKq0Gu0JtJ6Frt0LNLKCWWP+qt+4czGIrdbto0M74AUOlJfDt4kj37+9A/9CI qQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31uustqsnm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 25 Jun 2020 10:46:46 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05PAhv2R090658;
 Thu, 25 Jun 2020 10:46:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 31uur12beg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jun 2020 10:46:46 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05PAkhxM032514;
 Thu, 25 Jun 2020 10:46:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 25 Jun 2020 10:46:43 +0000
Date: Thu, 25 Jun 2020 13:46:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Garrit Franke <garritfranke@gmail.com>
Subject: Re: [PATCH v2] trivial: staging: vc04_services: replace bitshift
 with BIT macro
Message-ID: <20200625104637.GB2549@kadam>
References: <20200625090610.GA2571@kadam>
 <20200625093237.2640-1-garritfranke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625093237.2640-1-garritfranke@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 mlxscore=0 suspectscore=0 malwarescore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006250067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 cotscore=-2147483648 adultscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006250067
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
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 25, 2020 at 11:32:37AM +0200, Garrit Franke wrote:
> Cleans up some bitshifts by using the BIT macro.
> 
> Signed-off-by: Garrit Franke <garritfranke@gmail.com>

Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
