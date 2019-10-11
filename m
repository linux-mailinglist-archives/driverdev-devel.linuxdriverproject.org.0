Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A6ED3CF1
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 12:02:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4CA1880A5;
	Fri, 11 Oct 2019 10:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CyZL4aZLhtNa; Fri, 11 Oct 2019 10:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71ED288071;
	Fri, 11 Oct 2019 10:02:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84BF81BF83C
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 81B75204C7
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fb-YTA+tcHwS for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 10:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id D81C320370
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 10:02:32 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9B9scC2162644;
 Fri, 11 Oct 2019 10:02:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=+GPs3yD7k8TANwLI8v1G3L+HkQq52VFBQSkyO/JfTyE=;
 b=odX5tTsJa0N71+IkxfdmUXvmEusAA53/PDqRxAan/RFa/hmwkroe1IkemC7cVLrTpbgq
 Ntc4hHrHkT494iiN4RvosRl592XT44LaXQq86Z/hU1mcciF1BwxQcL1L2AtTHowHwMTG
 Db4GWZiJijm8y2pk2QJkucjCu86u/H53uUkZqRghIK+dnwfXNerMZPFS7j4fKDSE1MbJ
 Murg+1L0S9gJBkgW5Ap9LT3gacnXJ6sr0PHqNmzyBE+lv80nPLwVtCmZsSbGzpI4bgca
 48oFMirO25Aon5imzxEqwMdoxyUmI7TPNHL5RyLXHnn4wozC5daoapKAKeUcIseIG5fF TA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4r0hy0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:02:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9B9rWsx027913;
 Fri, 11 Oct 2019 10:02:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2vhrxg5gm9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:02:29 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BA2LJL020372;
 Fri, 11 Oct 2019 10:02:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 03:02:20 -0700
Date: Fri, 11 Oct 2019 13:02:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (line length)
Message-ID: <20191011100214.GO13286@kadam>
References: <1570676937-3975-1-git-send-email-chandra627@gmail.com>
 <SN6PR02MB40166D599A07440D26EBE7F1EE940@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB40166D599A07440D26EBE7F1EE940@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110094
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gneukum1@gmail.com" <gneukum1@gmail.com>,
 Chandra Annamaneni <chandra627@gmail.com>,
 "fabian.krueger@fau.de" <fabian.krueger@fau.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "simon@nikanor.nu" <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 02:54:59PM +0000, Matt Sickler wrote:
> > static struct mtd_partition p2kr0_spi1_parts[] = {
> >-       { .name = "SLOT_4",     .size = 7798784,                .offset = 0,                },
> >-       { .name = "SLOT_5",     .size = 7798784,                .offset = MTDPART_OFS_NXTBLK},
> >-       { .name = "SLOT_6",     .size = 7798784,                .offset = MTDPART_OFS_NXTBLK},
> >-       { .name = "SLOT_7",     .size = 7798784,                .offset = MTDPART_OFS_NXTBLK},
> >-       { .name = "CS1_EXTRA",  .size = MTDPART_SIZ_FULL,       .offset = MTDPART_OFS_NXTBLK},
> >+       { .name = "SLOT_4",  .size = 7798784,  .offset = 0,},
> >+       { .name = "SLOT_5",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> >+       { .name = "SLOT_6",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> >+       { .name = "SLOT_7",  .size = 7798784,  .offset = MTDPART_OFS_NXTBLK},
> >+       { .name = "CS1_EXTRA",  .size = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK},
> > };
> >
> > static struct flash_platform_data p2kr0_spi0_pdata = {
> 
> Is the line length limit a hard rule or can exceptions be made?  I
> really feel that these data tables are more easily read when they're
> formatted like tables...

Exceptions can be made.  It's probably not worth it though because
you have to be really aggressive about shooting down patches.  Ask
yourself if there aren't more important battles to fight when human
lifespans are so short?  I already rejected one change for you.  To me
the new table looks okay, though.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
