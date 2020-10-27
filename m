Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F96429AC7A
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 13:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5CA5867D1;
	Tue, 27 Oct 2020 12:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqtJL7mQt0c4; Tue, 27 Oct 2020 12:50:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DB1E86684;
	Tue, 27 Oct 2020 12:50:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5873D1BF84C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4FEAC8667A
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ezcqYm9VcfgP for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 12:50:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 97B5B865CF
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 12:50:44 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCnHrb057840;
 Tue, 27 Oct 2020 12:50:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=7eHD1CPUGD8Sh2Ytf9O98EsWKlv6Dzdcb05LLZDmo/E=;
 b=IDrCBNSr65H1q6NJGTxS585/OWymCy/iqqHkqWD4fb/XlSt69gckS2YHVGcTwk3SCv/x
 ebBCRDFham3baIOi78DVNCdfrKYQZVlXGLWQ078YAUIt/OexlO0OPH/FsnaGiiMoQW7v
 A0pv4OZfyNO7hmD+W8+gq21T/LYS5BM0ppM8I21klYqBrF4lnWx+4MFbrHlAnAvTKD26
 RzG3tDL0Xn5c0hOs/x3iVXIQejbYu8LjN2bp2Mn//lZe1UHBgh9M7niJIYSb8lxvuf+E
 CSBbgONOHo7Enf23mc7dv1egYBaOy9nVV4iBn7/XqdJv8RtFflFb/Eam5rFOcdx0SDuW mg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 34c9sasuc8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 12:50:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCVY2C142332;
 Tue, 27 Oct 2020 12:48:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 34cx6vwrne-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 12:48:38 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09RCmapQ010501;
 Tue, 27 Oct 2020 12:48:36 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 05:48:36 -0700
Date: Tue, 27 Oct 2020 15:48:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201027124830.GX1042@kadam>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270082
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> 
> Hello,
> Requesting a review / ack of this patch.
> 

Wait a couple weeks before you ask for feed back.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
