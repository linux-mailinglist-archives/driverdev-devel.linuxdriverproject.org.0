Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34190EC08E
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 10:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 919E12353A;
	Fri,  1 Nov 2019 09:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvSLS1pJee8L; Fri,  1 Nov 2019 09:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D73523509;
	Fri,  1 Nov 2019 09:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7791BF853
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 09:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E907F88455
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 09:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SEJepJ-CTk3 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 09:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B4A2A883DA
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 09:34:59 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA19Xok3095393;
 Fri, 1 Nov 2019 09:34:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=C7/ct8+ievqCQqX4iE018JBhq+KFOagNcvYT9LbMAZA=;
 b=RJX4gUl7uF91JVv1XVxxBIkBOFFU5L50+6Zm9Ost91IM3s31lgYaqkCBekP6T0njVZkn
 X+xcWlR5Kc2ZxL2+GXWMgj8hICXDZzuW/jNhe2DM/FXUKxkwbwGTvxN2tw79Rj04Bp2I
 gk1Aj+sI5UsK4NgWQx64GlqEw1ZqVs4JZRgAw0aFLZNuO0B9Nzrkz2b4YU2UpEYqwU7v
 Q199bKPPHJXKXl4ngMAcaKfzlN9bFA5A9BN5WtP5CdMaqFjTl+B+XBEfE0X9Qr1Ug37B
 Ul6KCTCGrFjd+1WhSDo4D16W0WlmN/o/T05RiiDRjcWFvMQCxG8wA1psVJM8kddIQiqu Mg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vxwhg0u6f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Nov 2019 09:34:58 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA19XCnS118290;
 Fri, 1 Nov 2019 09:34:57 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vykw323aj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Nov 2019 09:34:57 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xA19Yuuc010647;
 Fri, 1 Nov 2019 09:34:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 01 Nov 2019 02:34:56 -0700
Date: Fri, 1 Nov 2019 12:34:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Roi Martin <jroi.martin@gmail.com>
Subject: Re: [PATCH v2 6/6] staging: exfat: replace kmalloc with kmalloc_array
Message-ID: <20191101093447.GG18421@kadam>
References: <20191031123139.32361-1-jroi.martin@gmail.com>
 <20191031132503.GD1705@kadam>
 <20191031160356.GB6924@miniwopr.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031160356.GB6924@miniwopr.localdomain>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9427
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911010095
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9427
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911010095
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 31, 2019 at 05:03:56PM +0100, Roi Martin wrote:
> > > diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> > > index f71235c6a338..f4f82aecc05d 100644
> > > --- a/drivers/staging/exfat/exfat_core.c
> > > +++ b/drivers/staging/exfat/exfat_core.c
> > > @@ -713,8 +713,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
> > >  
> > >  	u32 checksum = 0;
> > >  
> > > -	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
> > > -						GFP_KERNEL);
> > > +	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
> > > +	p_fs->vol_utbl = upcase_table;
> > 
> > This patch is fine, but one idea for future patches is that you could
> > remove the "upcase_table" variable and use "p_fs->vol_utbl" everywhere
> > instead.
> 
> Thanks for the suggestion.
> 
> This is my first contribution and I tried to introduce the minimum
> number of changes necessary to fix the issues reported by checkpatch.pl.
> Also, I'm still immersed in getting familiar with the contribution
> process and the code.
> 
> Do you think it makes sense to include this change in a future patch
> series along with other refactoring? Or, should I modify this patch?

No don't modify the patch.  The patch is fine.

> 
> By the way, upcase_table is sometimes accessed in quite complex ways.
> For instance:
> 
> 	upcase_table[col_index][get_row_index(index)] = uni;
> 
> Where having an intermediate variable instead of using the struct field
> directly seems to improve readability a bit. Otherwise:
> 
> 	p_fs->vol_utbl[col_index][get_row_index(index)] = uni;

This line isn't very complex.  It's fine.


> 
> I assume, in cases like this, from a coding style perspective, the
> following approach is preferred:
> 
> 	row_index = get_row_index(index);
> 	p_fs->vol_utbl[col_index][row_index] = uni;

But this is better, yes.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
