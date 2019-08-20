Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC4095801
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Aug 2019 09:15:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33BA8203AB;
	Tue, 20 Aug 2019 07:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9ojjU2-xYAl; Tue, 20 Aug 2019 07:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E569620459;
	Tue, 20 Aug 2019 07:15:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A746D1BF2B6
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 07:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1BDE88216
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 07:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8MrH5D3k134 for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 07:15:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4F01881EC
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 07:15:31 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1012B334FDD0942BBE70;
 Tue, 20 Aug 2019 15:15:28 +0800 (CST)
Received: from [10.134.22.195] (10.134.22.195) by smtp.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 20 Aug
 2019 15:15:18 +0800
Subject: Re: [PATCH] erofs: move erofs out of staging
To: Qu Wenruo <quwenruo.btrfs@gmx.com>, Gao Xiang <hsiangkao@aol.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>
References: <790210571.69061.1566120073465.JavaMail.zimbra@nod.at>
 <20190818151154.GA32157@mit.edu> <20190818155812.GB13230@infradead.org>
 <20190818161638.GE1118@sol.localdomain>
 <20190818162201.GA16269@infradead.org>
 <20190818172938.GA14413@sol.localdomain>
 <20190818174702.GA17633@infradead.org>
 <20190818181654.GA1617@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190818201405.GA27398@hsiangkao-HP-ZHAN-66-Pro-G1>
 <20190819160923.GG15198@magnolia>
 <20190819203051.GA10075@hsiangkao-HP-ZHAN-66-Pro-G1>
 <bdb91cbf-985b-5a2c-6019-560b79739431@gmx.com>
 <ad62636f-ef1b-739f-42cc-28d9d7ed86da@huawei.com>
 <c6f6de48-2594-05e4-2048-9a9c59c018d7@gmx.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <c9a27e20-33fa-2cad-79f2-ecc26f6f3490@huawei.com>
Date: Tue, 20 Aug 2019 15:15:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c6f6de48-2594-05e4-2048-9a9c59c018d7@gmx.com>
Content-Language: en-US
X-Originating-IP: [10.134.22.195]
X-CFilter-Loop: Reflected
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
Cc: Jan Kara <jack@suse.cz>, Christoph Hellwig <hch@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Miao Xie <miaoxie@huawei.com>,
 devel <devel@driverdev.osuosl.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Richard Weinberger <richard@nod.at>, Eric Biggers <ebiggers@kernel.org>,
 torvalds <torvalds@linux-foundation.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs <linux-erofs@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAxOS84LzIwIDEwOjM4LCBRdSBXZW5ydW8gd3JvdGU6Cj4gCj4gCj4gT24gMjAxOS84LzIw
IOS4iuWNiDEwOjI0LCBDaGFvIFl1IHdyb3RlOgo+PiBPbiAyMDE5LzgvMjAgODo1NSwgUXUgV2Vu
cnVvIHdyb3RlOgo+Pj4gWy4uLl0KPj4+Pj4+IEkgaGF2ZSBtYWRlIGEgc2ltcGxlIGZ1enplciB0
byBpbmplY3QgbWVzc3kgaW4gaW5vZGUgbWV0YWRhdGEsCj4+Pj4+PiBkaXIgZGF0YSwgY29tcHJl
c3NlZCBpbmRleGVzIGFuZCBzdXBlciBibG9jaywKPj4+Pj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3hpYW5nL2Vyb2ZzLXV0aWxzLmdpdC9jb21taXQv
P2g9ZXhwZXJpbWVudGFsLWZ1enplcgo+Pj4+Pj4KPj4+Pj4+IEkgYW0gdGVzdGluZyB3aXRoIHNv
bWUgZ2l2ZW4gZGlycyBhbmQgdGhlIGZvbGxvd2luZyBzY3JpcHQuCj4+Pj4+PiBEb2VzIGl0IGxv
b2sgcmVhc29uYWJsZT8KPj4+Pj4+Cj4+Pj4+PiAjICEvYmluL2Jhc2gKPj4+Pj4+Cj4+Pj4+PiBt
a2RpciAtcCBtbnRkaXIKPj4+Pj4+Cj4+Pj4+PiBmb3IgKChpPTA7IGk8MTAwMDsgKytpKSk7IGRv
Cj4+Pj4+PiAJbWtmcy9ta2ZzLmVyb2ZzIC1GJGkgdGVzdGRpcl9mc2wuZnV6ei5pbWcgdGVzdGRp
cl9mc2wgPiAvZGV2L251bGwgMj4mMQo+Pj4+Pgo+Pj4+PiBta2ZzIGZ1enplcyB0aGUgaW1hZ2U/
IEVyLi4uLgo+Pj4+Cj4+Pj4gVGhhbmtzIGZvciB5b3VyIHJlcGx5Lgo+Pj4+Cj4+Pj4gRmlyc3Qs
IFRoaXMgaXMganVzdCB0aGUgZmlyc3Qgc3RlcCBvZiBlcm9mcyBmdXp6ZXIgSSB3cm90ZSB5ZXN0
ZXJkYXkgbmlnaHQuLi4KPj4+Pgo+Pj4+Pgo+Pj4+PiBPdmVyIGluIFhGUyBsYW5kIHdlIGhhdmUg
YW4geGZzIGRlYnVnZ2luZyB0b29sICh4ZnNfZGIpIHRoYXQga25vd3MgaG93Cj4+Pj4+IHRvIGR1
bXAgKGFuZCB3cml0ZSEpIG1vc3QgZXZlcnkgZmllbGQgb2YgZXZlcnkgbWV0YWRhdGEgdHlwZS4g
IFRoaXMKPj4+Pj4gbWFrZXMgaXQgZmFpcmx5IGVhc3kgdG8gd3JpdGUgc3lzdGVtYXRpYyBsZXZl
bCAwIGZ1enppbmcgdGVzdHMgdGhhdAo+Pj4+PiBjaGVjayBob3cgd2VsbCB0aGUgZmlsZXN5c3Rl
bSByZWFjdHMgdG8gZ2FyYmFnZSBkYXRhICh6ZXJvaW5nLAo+Pj4+PiByYW5kb21pemluZywgb25l
aW5nLCBhZGRpbmcgYW5kIHN1YnRyYWN0aW5nIHNtYWxsIGludGVnZXJzKSBpbiBhIGZpZWxkLgo+
Pj4+PiAoSXQgYWxzbyBrbm93cyBob3cgdG8gdHJhc2ggZW50aXJlIGJsb2Nrcy4pCj4+Pgo+Pj4g
VGhlIHNhbWUgdG9vbCBleGlzdHMgZm9yIGJ0cmZzLCBhbHRob3VnaCBsYWNrcyB0aGUgd3JpdGUg
YWJpbGl0eSwgYnV0Cj4+PiB0aGF0IGR1bXAgaXMgbW9yZSBjb21wcmVoZW5zaXZlIGFuZCBhIGdy
ZWF0IHRvb2wgdG8gbGVhcm4gdGhlIG9uLWRpc2sKPj4+IGZvcm1hdC4KPj4+Cj4+Pgo+Pj4gQW5k
IGZvciB0aGUgZnV6emluZyBkZWZlbmRpbmcgcGFydCwganVzdCBhIGZldyBrZXJuZWwgcmVsZWFz
ZXMgYWdvLAo+Pj4gdGhlcmUgaXMgbm9uZSBmb3IgYnRyZnMsIGFuZCBub3cgd2UgaGF2ZSBhIGZ1
bGwgc3RhdGljIHZlcmlmaWNhdGlvbgo+Pj4gbGF5ZXIgdG8gY292ZXIgKGFsbW9zdCkgYWxsIG9u
LWRpc2sgZGF0YSBhdCByZWFkIGFuZCB3cml0ZSB0aW1lLgo+Pj4gKEFsb25nIHdpdGggZW5oYW5j
ZWQgcnVudGltZSBjaGVjaykKPj4+Cj4+PiBXZSBoYXZlIGNvdmVyZWQgZnJvbSB2YWd1ZSB2YWx1
ZXMgaW5zaWRlIHRyZWUgYmxvY2tzIGFuZCBpbnZhbGlkL21pc3NpbmcKPj4+IGNyb3NzLXJlZiBm
aW5kIGF0IHJ1bnRpbWUuCj4+Pgo+Pj4gQ3VycmVudGx5IHRoZSB0d28gbGF5ZXJlZCBjaGVjayB3
b3JrcyBwcmV0dHkgZmluZSAod2VsbCwgc29tZXRpbWVzIHRvbwo+Pj4gZ29vZCB0byBkZXRlY3Qg
b2xkZXIsIGltcHJvcGVyIGJlaGF2ZWQga2VybmVsKS4KPj4+IC0gVHJlZSBibG9ja3Mgd2l0aCB2
YWd1ZSBkYXRhIGp1c3QgZ2V0IHJlamVjdGVkIGJ5IHZlcmlmaWNhdGlvbiBsYXllcgo+Pj4gICBT
byB0aGF0IGFsbCBtZW1iZXJzIHNob3VsZCBmaXQgb24tZGlzayBmb3JtYXQsIGZyb20gYWxpZ25t
ZW50IHRvCj4+PiAgIGdlbmVyYXRpb24gdG8gaW5vZGUgbW9kZS4KPj4+Cj4+PiAgIFRoZSBlcnJv
ciB3aWxsIHRyaWdnZXIgYSBnb29kIGVub3VnaCAoVE0pIGVycm9yIG1lc3NhZ2UgZm9yIGRldmVs
b3Blcgo+Pj4gICB0byByZWFkLCBhbmQgaWYgd2UgaGF2ZSBvdGhlciBjb3BpZXMsIHdlIHJldHJ5
IG90aGVyIGNvcGllcyBqdXN0IGFzCj4+PiAgIHdlIGhpdCBhIGJhZCBjb3B5Lgo+Pj4KPj4+IC0g
QXQgcnVudGltZSwgd2UgaGF2ZSBtdWNoIGxlc3MgdG8gY2hlY2sKPj4+ICAgT25seSBjcm9zcy1y
ZWYgcmVsYXRlZCB0aGluZ3MgY2FuIGJlIHdyb25nIG5vdy4gc2luY2UgZXZlcnl0aGluZwo+Pj4g
ICBpbnNpZGUgYSBzaW5nbGUgdHJlZSBibG9jayBoYXMgYWxyZWFkeSBiZSBjaGVja2VkLgo+Pj4K
Pj4+IEluIGZhY3QsIGZyb20gbXkgcmVzcGVjdCBvZiB2aWV3LCBzdWNoIHJlYWQgdGltZSBjaGVj
ayBzaG91bGQgYmUgdGhlcmUKPj4+IGZyb20gdGhlIHZlcnkgYmVnaW5uaW5nLgo+Pj4gSXQgYWN0
cyBraW5kYSBvZiBhIG9uLWRpc2sgZm9ybWF0IHNwZWMuIChJbiBmYWN0LCBieSBpbXBsZW1lbnRp
bmcgdGhlCj4+PiB2ZXJpZmljYXRpb24gbGF5ZXIgaXRzZWxmLCBpdCBhbHJlYWR5IGV4cG9zZXMg
YSBsb3Qgb2YgYnRyZnMgZGVzaWduCj4+PiB0cmFkZS1vZmZzKQo+Pj4KPj4+IEV2ZW4gZm9yIGEg
ZnMgYXMgY29tcGxleCAoYnVnZ3kpIGFzIGJ0cmZzLCB3ZSBvbmx5IHRha2UgMUsgbGluZXMgdG8K
Pj4+IGltcGxlbWVudCB0aGUgdmVyaWZpY2F0aW9uIGxheWVyLgo+Pj4gU28gSSdkIGxpa2UgdG8g
c2VlIGV2ZXJ5IG5ldyBtYWlubGluZWQgZnMgdG8gaGF2ZSBzdWNoIGFiaWxpdHkuCj4+Cj4+IE91
dCBvZiBjdXJpb3NpdHksIGl0IGxvb2tzIGxpa2UgZXZlcnkgbWFpbnN0cmVhbSBmaWxlc3lzdGVt
IGhhcyBpdHMgb3duCj4+IGZ1enovaW5qZWN0aW9uIHRvb2wgaW4gdGhlaXIgdG9vbC1zZXQsIGlm
IGl0J3MgcmVhbGx5IHN1Y2ggYSBnZW5lcmljCj4+IHJlcXVpcmVtZW50LCB3aHkgc2hvdWxkbid0
IHRoZXJlIGJlIGEgY29tbW9uIHRvb2wgdG8gaGFuZGxlIHRoYXQsIGxldCBzcGVjaWZpZWQKPj4g
ZmlsZXN5c3RlbSBmaWxsIHRoZSB0b29sJ3MgY2FsbGJhY2sgdG8gc2VlayBhIG5vZGUvYmxvY2sg
YW5kIHN1cHBvcnRlZCBmaWVsZHMKPj4gY2FuIGJlIGZ1enplZCBpbiBpbm9kZS4KPiAKPiBJdCBj
b3VsZCBiZSBwb3NzaWJsZSBmb3IgWEZTL0VYVCogdG8gc2hhcmUgdGhlIHNhbWUgaW5mcmFzdHJ1
Y3R1cmUKPiB3aXRob3V0IG11Y2ggaGFzc2xlLgo+IChJZiBub3QgY29uc2lkZXJpbmcgZXh0ZXJu
YWwgam91cm5hbCkKPiAKPiBCdXQgZm9yIGJ0cmZzLCBpdCdzIGxpa2UgYSByZWd1bGFyIGZzIG9u
IGEgc3VwZXIgbGFyZ2UgZG0tbGluZWFyLCB3aGljaAo+IGZ1cnRoZXIgYnVpbGRzIGl0cyBjaHVu
a3Mgb24gZGlmZmVyZW50IGRtLXJhaWQxL2RtLWxpbmVhci9kbS1yYWlkNTYuCj4gCj4gU28gbm90
IHN1cmUgaWYgaXQncyBwb3NzaWJsZSBmb3IgYnRyZnMsIGFzIGl0IGNvbnRhaW5zIGl0cyBsb2dp
Y2FsCj4gYWRkcmVzcyBsYXllciBieXRlbnIgKHRoZSBtb3N0IGNvbW1vbiBvbmUpIGFsb25nIHdp
dGggcGVyLWNodW5rIHBoeXNpY2FsCj4gbWFwcGluZyBieXRlbnIgKGluIGFub3RoZXIgdHJlZSku
CgpZZWFoLCBpdCBsb29rcyBsaWtlIHdlIG5lZWQgc2VhcmNoaW5nIG1vcmUgbGV2ZWxzIG1hcHBp
bmcgdG8gZmluZCB0aGUgZmluYWwKcGh5c2ljYWwgYmxvY2sgYWRkcmVzcyBvZiBpbm9kZS9ub2Rl
L2RhdGEgaW4gYnRyZnMuCgpJTU8sIGluIGEgbGl0dGxlIGxhenkgd2F5LCB3ZSBjYW4gcmVmb3Jt
IGFuZCByZXVzZSBleGlzdGVkIGZ1bmN0aW9uIGluCmJ0cmZzLXByb2dzIHdoaWNoIGNhbiBmaW5k
IHRoZSBtYXBwaW5nIGluZm8gb2YgaW5vZGUvbm9kZS9kYXRhIGFjY29yZGluZyB0bwpzcGVjaWZp
ZWQgaW5vIG9yIGlubytwZ19uby4KCj4gCj4gSXQgbWF5IGRlcGVuZHMgb24gdGhlIGdyYW51bGFy
aXR5LiBCdXQgZGVmaW5pdGVseSBhIGdvb2QgaWRlYSB0byBkbyBzbwo+IGluIGEgZ2VuZXJpYyB3
YXkuCj4gQ3VycmVudGx5IHdlIGRlcGVuZCBvbiBzdXBlciBraW5kIHN0dWRlbnQgZGV2ZWxvcGVy
cy9yZXBvcnRlcnMgb24gc3VjaAoKWXVwLCBJIGp1c3QgZ3Vlc3MgV2VuIFh1IG1heSBiZSBpbnRl
cmVzdGVkIGluIHdvcmtpbmcgb24gYSBnZW5lcmljIHdheSB0byBmdXp6CmZpbGVzeXN0ZW0sIGFz
IEkga25vdyB0aGV5IGRpZyBkZWVwIGluIGZpbGVzeXN0ZW0gY29kZSB3aGVuIGRvaW5nIGZ1enou
IEJUVywKd2hpY2ggaW1wcmVzc2VzIG1lIGlzLCBjb25zdHJ1Y3RpbmcgY2hlY2twb2ludCBieSBp
bmplY3Rpbmcgb25lIGJ5dGUsIGFuZCB0aGVuCndyaXRlIGEgY29ycmVjdCByZWNhbGN1bGF0ZWQg
Y2hlY2tzdW0gdmFsdWUgb24gdGhhdCBjaGVja3BvaW50LCBtYWtpbmcgdGhhdApjaGVja3BvaW50
IGxvb2tzIHZhbGlkLi4uCgpUaGFua3MsCgo+IGZ1enplZCBpbWFnZXMsIGFuZCBkZXZlbG9wZXJz
IHNvbWV0aW1lcyBnZXQgaW5zcGlyZWQgYnkgcmVhbCB3b3JsZAo+IGNvcnJ1cHRpb24gKG9yIGhp
cy9oZXIgbW9vZCkgdG8gYWRkIHNvbWUgdmFsaWQgYnV0IGhhcmQtdG8taGl0IGNvcm5lcgo+IGNh
c2UgY2hlY2suCj4gCj4gVGhhbmtzLAo+IFF1Cj4gCj4+IEl0IGNhbiBoZWxwIHRvIGF2b2lkIHJl
ZHVuZGFudCB3b3JrIHdoZW5ldmVyIExpbnV4Cj4+IHdlbGNvbWVzIGEgbmV3IGZpbGVzeXN0ZW0u
Li4uCj4+Cj4+IFRoYW5rcywKPj4KPj4+Cj4+Pj4KPj4+PiBBY3R1YWxseSwgY29tcGFyZWQgd2l0
aCBYRlMsIEVST0ZTIGhhcyByYXRoZXIgc2ltcGxlIG9uLWRpc2sgZm9ybWF0Lgo+Pj4+IFdoYXQg
d2UgaW5qZWN0IG9uZSB0aW1lIGlzIHF1aXRlIGRldGVybWluaXN0aWMuCj4+Pj4KPj4+PiBUaGUg
Zmlyc3Qgc3RlcCBqdXN0IHB1cnBvc2VseSB3cml0ZXMgc29tZSByYW5kb20gZnV6emVkIGRhdGEg
dG8KPj4+PiB0aGUgYmFzZSBpbm9kZSBtZXRhZGF0YSwgY29tcHJlc3NlZCBpbmRleGVzLCBvciBk
aXIgZGF0YSBmaWVsZAo+Pj4+IChvbmUgcm91bmQgb25lIGZpZWxkKSB0byBtYWtlIGl0IHZhbGlk
aXR5IGFuZCBjb3ZlcmFiaWxpdHkuCj4+Pj4KPj4+Pj4KPj4+Pj4gWW91IG1pZ2h0IHdhbnQgdG8g
d3JpdGUgc3VjaCBhIGRlYnVnZ2luZyB0b29sIGZvciBlcm9mcyBzbyB0aGF0IHlvdSBjYW4KPj4+
Pj4gdGFrZSBhcGFydCBjcmFzaGVkIGltYWdlcyB0byBnZXQgYSBiZXR0ZXIgaWRlYSBvZiB3aGF0
IHdlbnQgd3JvbmcsIGFuZAo+Pj4+PiB0byB3cml0ZSBlYXN5IGZ1enppbmcgdGVzdHMuCj4+Pj4K
Pj4+PiBZZXMsIHdlIHdpbGwgZG8gc3VjaCBhIGRlYnVnZ2luZyB0b29sIG9mIGNvdXJzZS4gQWN0
dWFsbHkgTGkgR3VpZnUgaXMgbm93Cj4+Pj4gZGV2ZWxvcHBpbmcgYSBlcm9mcy1mdXNlIHRvIHN1
cHBvcnQgb2xkIGxpbnV4IHZlcnNpb25zIG9yIG90aGVyIE9TZXMgZm9yCj4+Pj4gYXJjaGl2ZWlu
ZyBvbmx5IHVzZSwgd2Ugd2lsbCBiYXNlIG9uIHRoYXQgY29kZSB0byBkZXZlbG9wIGEgYmV0dGVy
IGZ1enplcgo+Pj4+IHRvb2wgYXMgd2VsbC4KPj4+Cj4+PiBQZXJzb25hbGx5IHNwZWFraW5nLCBk
ZWJ1Z2dpbmcgdG9vbCBpcyB3YXkgbW9yZSBpbXBvcnRhbnQgdGhhbiBhIHJ1bm5pbmcKPj4+IGtl
cm5lbCBtb2R1bGUvZnVzZS4KPj4+IEl0J3MgaHVtYW4gdHJ5aW5nIHRvIHdyaXRlIHRoZSBjb2Rl
LCBtb3N0IG9mIHRpbWUgaXMgc3BlbnQgZWR1Y2F0aW5nCj4+PiBjb2RlIHJlYWRlcnMsIHRodXMg
ZGVidWdnaW5nIHRvb2wgaXMgd2F5IG1vcmUgaW1wb3J0YW50IHRoYW4gZGVhZCBjb2xkIGNvZGUu
Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gUXUKPj4+Pgo+Pj4+IFRoYW5rcywKPj4+PiBHYW8gWGlhbmcK
Pj4+Pgo+Pj4+Pgo+Pj4+PiAtLUQKPj4+Pj4KPj4+Pj4+IAl1bW91bnQgbW50ZGlyCj4+Pj4+PiAJ
bW91bnQgLXQgZXJvZnMgLW8gbG9vcCB0ZXN0ZGlyX2ZzbC5mdXp6LmltZyBtbnRkaXIKPj4+Pj4+
IAlmb3IgaiBpbiBgZmluZCBtbnRkaXIgLXR5cGUgZmA7IGRvCj4+Pj4+PiAJCW1kNXN1bSAkaiA+
IC9kZXYvbnVsbAo+Pj4+Pj4gCWRvbmUKPj4+Pj4+IGRvbmUKPj4+Pj4+Cj4+Pj4+PiBUaGFua3Ms
Cj4+Pj4+PiBHYW8gWGlhbmcKPj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4g
R2FvIFhpYW5nCj4+Pj4+Pj4KPj4+Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
