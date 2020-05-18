Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E88A81D79CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 15:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2AF3921509;
	Mon, 18 May 2020 13:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48-0QDelA3Kq; Mon, 18 May 2020 13:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9DF020434;
	Mon, 18 May 2020 13:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D92A1BF386
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 13:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0918A20444
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 13:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nh56GVxLU4Qz for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 13:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 3BE4020434
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 13:27:32 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04IDR0k6045161;
 Mon, 18 May 2020 13:27:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=BCGosJHcbcUtce4Hxg02+p38p5RdXX0moe9TSLTeZGQ=;
 b=EH+gpxtAPFyj5QeBSa5jhy+E/Rx23WKIT0T9TAicRU2pvtwcI75sQpBVVBvW3Xm5dfZW
 hxYu0ZQ38W0e9C42My9dRMBYGMFD34h7+d6if5yVnVtxTnE2rdifnr6W3WTJ/8vu+oGU
 utc4PkvEskNy2xWT/VSxfxjwA1AuidCfQBSKKS31KjzwbALLQudOdjL/KWnci0a2WdGX
 nM5pUE0LYFE1+1DmL1MUwsC07VkTlRyJM5BBn5NM+zBrPxfKMHMJt29rKxZHU4eO5zs8
 xgqr27U0RubvYJ+1zfEwGakzooe+hP1bVfBTOG7fo1cLCuwqrkOd6BdGUGzT4DSwgFlg wA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 3127kqxrat-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 18 May 2020 13:27:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04IDOUs4108508;
 Mon, 18 May 2020 13:25:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 313ghyusxm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 13:25:30 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04IDPTlA004663;
 Mon, 18 May 2020 13:25:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 18 May 2020 06:25:29 -0700
Date: Mon, 18 May 2020 16:25:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8192u: Merge almost duplicate code
Message-ID: <20200518132523.GK2078@kadam>
References: <20200517165819.136715-1-pterjan@google.com>
 <CAANdO=Li7FUbVQk6m+CksZBv1zy-F+-1tN9oYZ4niYJ0utRfXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAANdO=Li7FUbVQk6m+CksZBv1zy-F+-1tN9oYZ4niYJ0utRfXA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005180120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9624
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 mlxscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 cotscore=-2147483648
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005180120
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 17, 2020 at 09:25:05PM +0100, Pascal Terjan wrote:
> On Sun, 17 May 2020 at 17:58, Pascal Terjan <pterjan@google.com> wrote:
> >
> > This causes a change in behaviour:
> > - stats also get updated when reordering, this seems like it should be
> >   the case but those lines were commented out.
> > - sub_skb NULL check now happens early in both cases, previously it
> >   happened only after dereferencing it 12 times, so it may not actually
> >   be needed.
> >
> 
> Hi,
> I actually noticed the same duplicated code (and same late NULL check)
> in drivers/staging/rtl8192e/rtllib_rx.c
> drivers/staging/rtl8712/rtl8712_recv.c has only one copy of the code
> but with the late NULL check
> drivers/staging/rtl8188eu/core/rtw_recv.c has only one copy of the
> code and doesn't do any NULL check
> 
> Now I wonder how to proceed. The code is not great so it would not
> feel right to make it reusable.
> Should I continue improving it on this driver only first (maybe trying
> to reuse ieee80211_data_to_8023_exthdr from net/wireless/util.c for
> example)?

It looks like the NULL check could be removed, but it's also fine to
keep it so long as it's not after a NULL dereference.

Do whatever you have the energy to do...  It would be nice if people who
fix bugs in these Realtek drivers would check the other drivers as well
but for cleanups basically everyone just works on one driver only.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
