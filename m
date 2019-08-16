Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CADCE902A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 15:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B2B887B32;
	Fri, 16 Aug 2019 13:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHh3lpkCIHRB; Fri, 16 Aug 2019 13:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AAD787B07;
	Fri, 16 Aug 2019 13:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58E1E1BF841
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 13:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 55C6A869F6
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 13:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-_C7Hmjch1v for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 13:12:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9A4B869EC
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 13:12:13 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GD8h3Z182173;
 Fri, 16 Aug 2019 13:12:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=XdgM3xcc9SUA+Zw1b6KHtdB/PkVRuj7m9FujaQZMHLk=;
 b=h/LcWQjZAg1u+DtntPx8biaWEAzOuirQmxwHm559QIQb7PHXu+LUSzQBoVqDEgG8RY7M
 3aParRz3aJT6+3bE60DuNWvxyL51J3AamTVzGh7KJIXPHzmHxiA5wmkZBqbLhA7RNECV
 OKs90CCj/d3b1/yHme38RpG/hLIrUXa9k02DeY3i2ULyCfN5NGn3rtopqG+FaYSuwloN
 RG8Bu3FEt7D0nkqU1UcKBGIuKberCUZeb0qLYPAjHQuJrNHpRgFx6tR7pxKPYMSGHlAg
 aPVH7UtqpLgEi4oMklT0BDJY2QtDXQd89SYxj2b17gZrePhzWawEwJ4qSN/IFO+tlyUv 2Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2u9nbu0e3k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 13:12:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7GD8el7019089;
 Fri, 16 Aug 2019 13:12:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2udgqg46ha-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 13:12:12 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7GDCBtl027537;
 Fri, 16 Aug 2019 13:12:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 16 Aug 2019 06:12:10 -0700
Date: Fri, 16 Aug 2019 16:12:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 10/15] drivers/acrn: add interrupt injection support
Message-ID: <20190816131203.GB3632@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-11-git-send-email-yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565922356-4488-11-git-send-email-yakui.zhao@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908160136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9350
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160136
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
Cc: devel@driverdev.osuosl.org, Mingqiang Chi <mingqiang.chi@intel.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 Jason Chen CJ <jason.cj.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 10:25:51AM +0800, Zhao Yakui wrote:
> +	case IC_VM_INTR_MONITOR: {
> +		struct page *page;
> +
> +		ret = get_user_pages_fast(ioctl_param, 1, 1, &page);
> +		if (unlikely(ret != 1) || !page) {
                                       ^^^^^^^^
Not required.

> +			pr_err("acrn-dev: failed to pin intr hdr buffer!\n");
> +			return -ENOMEM;
> +		}
> +
> +		ret = hcall_vm_intr_monitor(vm->vmid, page_to_phys(page));
> +		if (ret < 0) {
> +			pr_err("acrn-dev: monitor intr data err=%ld\n", ret);
> +			return -EFAULT;
> +		}
> +		break;
> +	}
> +

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
