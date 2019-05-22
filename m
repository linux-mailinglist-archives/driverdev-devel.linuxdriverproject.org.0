Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D1F2606C
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 11:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E6E98625B;
	Wed, 22 May 2019 09:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 68ekrDN6PSCa; Wed, 22 May 2019 09:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A20B0861F6;
	Wed, 22 May 2019 09:24:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C408F1BF421
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 09:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C08E58671E
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 09:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AzcGsvC6FEiI for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 09:24:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 151C184CF3
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 09:24:23 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4M9OGtK174736;
 Wed, 22 May 2019 09:24:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=9IPMfVTY25vatSS0rekM5Mp3zOdIvyjUj7a4OsqASVQ=;
 b=sdwyQq62FkEtrx+6BlhW7QBH5p8j/so8Jz/mLtkvu2Wlz8H9nih0TtC/ezTKs/w5dIlI
 t3SjNHfv2m4BcLnYitOPUmznD3nM68aRMP2TBSazrVMqOHBzRTdawDrLxZPUqX01Ja3b
 5q4aMGBHfBoex7Sukj94hgNYD5RUyctBtaynGjO/eIdc7ZyIOu+hdVQ8FUy5qHNJKvYW
 peJC2p5Rv89YwkQPJTWCU0ec7+OUieMWBiVby7MYvszJ8/IA9G6fGutKVraoNYKt5/iY
 XlB1GAILsQKN30J+858GaN2Xl9SJkSZLd8qOElYY372XORezRwfMkbXTPTspF1ro19Kb pA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2smsk5aewc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 May 2019 09:24:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4M9OBWw193984;
 Wed, 22 May 2019 09:24:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2smsh1gaq4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 May 2019 09:24:21 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4M9OLjb018487;
 Wed, 22 May 2019 09:24:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 May 2019 09:24:20 +0000
Date: Wed, 22 May 2019 12:24:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] staging: rtl8192u: Remove an unnecessary NULL check
Message-ID: <20190522092412.GR31203@kadam>
References: <20190521174221.124459-1-natechancellor@gmail.com>
 <CAKwvOdmgpx0+d905PdRqUFeg8Fj8zf3mrWVOho_dajvEWvam9w@mail.gmail.com>
 <CAKwvOdmpHOMwVM+d_W3eeu3xC+nZqBTO_hx9Wf1z10yivxSe7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdmpHOMwVM+d_W3eeu3xC+nZqBTO_hx9Wf1z10yivxSe7A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905220068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905220069
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
 LKML <linux-kernel@vger.kernel.org>, John Whitmore <johnfwhitmore@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Richard Smith <richardsmith@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 03:57:46PM -0700, Nick Desaulniers wrote:
> > > -       if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
> > > -           (param->u.wpa_ie.len && !param->u.wpa_ie.data))
> >
> > Right so, the types in this expression:
> >
> > param: struct ieee_param*
> > param->u: *anonymous union*
> > param->u.wpa_ie: *anonymous struct*
> > param->u.wpa_ie.len: u32
> > param->u.wpa_ie.data: u8 [0]
> > as defined in drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295
> > https://github.com/ClangBuiltLinux/linux/blob/9c7db5004280767566e91a33445bf93aa479ef02/drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295-L322
> >
> > so this is a tricky case, because in general array members can never
> > themselves be NULL,


Unless they array was the first struct member, obviously.


> >  and usually I trust -Wpointer-bool-conversion, but
> > this is a special case because of the flexible array member:

Nah.  It's the same thing.  That patch is fine.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
