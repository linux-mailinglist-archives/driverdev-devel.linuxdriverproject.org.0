Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 824FF2ADEB4
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 19:49:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7203086672;
	Tue, 10 Nov 2020 18:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pA21YKADbDt4; Tue, 10 Nov 2020 18:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F36C865E2;
	Tue, 10 Nov 2020 18:49:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 065011BF57C
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 18:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0146F8717A
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 18:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vfqr7w+1aPQL for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 18:49:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F03F787175
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 18:49:49 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AAIhtQS121445;
 Tue, 10 Nov 2020 18:49:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=wC2jbd2NkDz1nAFghaaz9PjGpzDIDHVMI1YpVUVpkYY=;
 b=mDk3bgC77SfyTsIQJmoA4JjlK+ELV0wEf+2ALlkHf8NY161gdBZxGBHOYExrMjvufFeo
 OopSm1adJ8Aesyn8ejvl+87ql2LgllSnVHTXjmYP8GNn63AYB4x8fKdDOCYsHs5joHiX
 qzPixFaNPY9xtTFmDz8NCUvr1fD21rPU953PcFmPi5czUZAU0IP7f3ANi85nkvSEeDWT
 qM+f3rjlv72E5qJZ+3J+8G9hBM7Pdjzno6nUG4jR80eC3UZLzxRgLWqUFXLiCOGYgqbo
 QqwuiYoTzAHt8QkyZTOEOTKYKX1s2wTQlkhsEEgl4PGpJTU8kTKTuGf0EM4EseGZWe5n IA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 34nh3awgb5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Nov 2020 18:49:28 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AAIjCpC145314;
 Tue, 10 Nov 2020 18:49:28 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 34p55p04dn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Nov 2020 18:49:27 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AAInIFC014602;
 Tue, 10 Nov 2020 18:49:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Nov 2020 10:49:18 -0800
Date: Tue, 10 Nov 2020 21:49:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
Message-ID: <20201110184903.GG29398@kadam>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
 <202010141611.70B7A38@keescook>
 <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
 <202010161541.6DD2D1E@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202010161541.6DD2D1E@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9801
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100129
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9801
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 priorityscore=1501
 clxscore=1011 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=0
 mlxlogscore=999 impostorscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100129
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
Cc: rafael@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, linux-kselftest@vger.kernel.org,
 joel@joelfernandes.org, tkjos@android.com, shuah@kernel.org,
 devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net, surenb@google.com,
 linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 rric@kernel.org, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 16, 2020 at 03:51:25PM -0700, Kees Cook wrote:
> On Fri, Oct 16, 2020 at 12:53:13PM +0200, Peter Zijlstra wrote:
> > That's like saying: "I'm too lazy to track what I've looked at already".
> > You're basically proposing to graffiti "Kees was here -- 16/10/2020" all
> > over the kernel. Just so you can see where you still need to go.
> > 
> > It says the code was (assuming your audit was correct) good at that
> > date, but has no guarantees for any moment after that.
> 
> That kind of bit-rot marking is exactly what I would like to avoid: just
> putting a comment in is pointless. Making the expectations of the usage
> become _enforced_ is the goal. And having it enforced by the _compiler_
> is key. Just adding a meaningless attribute that a static checker
> will notice some time and hope people fix them doesn't scale either
> (just look at how many sparse warnings there are).

Most Sparse warnings are false positives.  People do actually fix the
ones which matter.

I think this patchset could be useful.  I'm working on a refcounting
check for Smatch.  I want to warn about when we forget to drop a
reference on an error path.  Right now I just assume that anything with
"error", "drop" or "->stats->" in the name is just a counter.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
