Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47930A2050
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 18:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0353A88C69;
	Thu, 29 Aug 2019 16:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c9-7hOnf+jsJ; Thu, 29 Aug 2019 16:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07EF588C2F;
	Thu, 29 Aug 2019 16:05:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D92A1BF2BB
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CFEC88ABC
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBubUo3GArzk for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 16:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D6FC861B5
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 16:05:33 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 4C09B35D276DC1393A0C;
 Fri, 30 Aug 2019 00:05:29 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 00:05:28 +0800
Received: from architecture4 (10.140.130.215) by
 dggeme762-chm.china.huawei.com (10.3.19.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 30 Aug 2019 00:05:28 +0800
Date: Fri, 30 Aug 2019 00:04:41 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829160441.GA141079@architecture4>
References: <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com> <20190829151144.GJ23584@kadam>
 <20190829152757.GA125003@architecture4>
 <20190829154346.GK23584@kadam>
 <20190829155127.GA136563@architecture4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829155127.GA136563@architecture4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.140.130.215]
X-ClientProxiedBy: dggeme703-chm.china.huawei.com (10.1.199.99) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?gbk?Q?Kl=A8=A5tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Thu, Aug 29, 2019 at 11:51:27PM +0800, Gao Xiang wrote:
> Hi Dan,
> 
> On Thu, Aug 29, 2019 at 06:43:46PM +0300, Dan Carpenter wrote:
> > > p.s. There are 2947 (un)likely places in fs/ directory.
> > 
> > I was complaining about you adding new pointless ones, not existing
> > ones.  The likely/unlikely annotations are supposed to be functional and
> > not decorative.  I explained this very clearly.
> 
> I don't think that is mostly pointless. I think it has functional use
> because all error handling paths are rarely happened, or can you remove
> the unlikely in IS_ERR as well?
> 
> > 
> > Probably most of the annotations in fs/ are wrong but they are also
> > harmless except for the slight messiness.  However there are definitely
> > some which are important so removing them all isn't a good idea.
> > 
> > > If you like, I will delete them all.
> > 
> > But for erofs, I don't think that any of the likely/unlikely calls have
> > been thought about so I'm fine with removing all of them in one go.
> 
> Maybe some misuse but rare, I will show you case by case. Wait a minute.

Anyway, I'm fine to delete them all if you like, but I think majority of these
are meaningful.

data.c-		/* page is already locked */
data.c-		DBG_BUGON(PageUptodate(page));
data.c-
data.c:		if (unlikely(err))
data.c-			SetPageError(page);
data.c-		else
data.c-			SetPageUptodate(page);
--
IO error

data.c-
data.c-repeat:
data.c-	page = find_or_create_page(mapping, blkaddr, gfp);
data.c:	if (unlikely(!page)) {
data.c-		DBG_BUGON(nofail);
data.c-		return ERR_PTR(-ENOMEM);
data.c-	}
--
NO MEM


data.c-		}
data.c-
data.c-		err = bio_add_page(bio, page, PAGE_SIZE, 0);
data.c:		if (unlikely(err != PAGE_SIZE)) {
data.c-			err = -EFAULT;
data.c-			goto err_out;

Internal error (since it is a single bio with one page).

data.c-		}
---

data.c-		lock_page(page);
data.c-
data.c-		/* this page has been truncated by others */
data.c:		if (unlikely(page->mapping != mapping)) {
data.c-unlock_repeat:
data.c-			unlock_page(page);
data.c-			put_page(page);
data.c-			goto repeat;
data.c-		}

truncated

data.c-
data.c:		/* more likely a read error */
data.c:		if (unlikely(!PageUptodate(page))) {
data.c-			if (io_retries) {
data.c-				--io_retries;
data.c-				goto unlock_repeat;

IO err

--
data.c-	nblocks = DIV_ROUND_UP(inode->i_size, PAGE_SIZE);
data.c-	lastblk = nblocks - is_inode_flat_inline(inode);
data.c-
data.c:	if (unlikely(offset >= inode->i_size)) {
data.c-		/* leave out-of-bound access unmapped */
data.c-		map->m_flags = 0;
data.c-		map->m_plen = 0;
--

FS corrupted

data.c-int erofs_map_blocks(struct inode *inode,
data.c-		     struct erofs_map_blocks *map, int flags)
data.c-{
data.c:	if (unlikely(is_inode_layout_compression(inode))) {

for compressed files, should call z_erofs_map_blocks_iter since it
behaves in iterative way. but I think that can be deleted.

data.c-		int err = z_erofs_map_blocks_iter(inode, map, flags);
data.c-
data.c-		if (map->mpage) {
--
data.c-		unsigned int blkoff;
data.c-
data.c-		err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
data.c:		if (unlikely(err))
data.c-			goto err_out;

Error

data.c-
data.c-		/* zero out the holed page */
data.c:		if (unlikely(!(map.m_flags & EROFS_MAP_MAPPED))) {

no hole in erofs.

data.c-			zero_user_segment(page, 0, PAGE_SIZE);
data.c-			SetPageUptodate(page);
data.c-
--
data.c-submit_bio_out:
data.c-		__submit_bio(bio, REQ_OP_READ, 0);
data.c-
data.c:	return unlikely(err) ? ERR_PTR(err) : NULL;

err

data.c-}
data.c-
data.c-/*
--
data.c-	DBG_BUGON(!list_empty(pages));
data.c-
data.c-	/* the rare case (end in gaps) */
data.c:	if (unlikely(bio))
data.c-		__submit_bio(bio, REQ_OP_READ, 0);
data.c-	return 0;
data.c-}


decompressor.c-			get_page(victim);
decompressor.c-		} else {
decompressor.c-			victim = erofs_allocpage(pagepool, GFP_KERNEL, false);
decompressor.c:			if (unlikely(!victim))
decompressor.c-				return -ENOMEM;

nomem

decompressor.c-			victim->mapping = Z_EROFS_MAPPING_STAGING;
decompressor.c-		}


dir.c-			de_namelen = le16_to_cpu(de[1].nameoff) - nameoff;
dir.c-
dir.c-		/* a corrupted entry is found */
dir.c:		if (unlikely(nameoff + de_namelen > maxsize ||
dir.c-			     de_namelen > EROFS_NAME_LEN)) {

corrupted

dir.c-			errln("bogus dirent @ nid %llu", EROFS_V(dir)->nid);
dir.c-			DBG_BUGON(1);
--
dir.c-
dir.c-		nameoff = le16_to_cpu(de->nameoff);
dir.c-
dir.c:		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
dir.c-			     nameoff >= PAGE_SIZE)) {

corrupted

dir.c-			errln("%s, invalid de[0].nameoff %u @ nid %llu",
dir.c-			      __func__, nameoff, EROFS_V(dir)->nid);
--
dir.c-				dirsize - ctx->pos + ofs, PAGE_SIZE);
dir.c-
dir.c-		/* search dirents at the arbitrary position */
dir.c:		if (unlikely(initial)) {

as comments said

dir.c-			initial = false;
dir.c-
dir.c-			ofs = roundup(ofs, sizeof(struct erofs_dirent));
dir.c:			if (unlikely(ofs >= nameoff))
dir.c-				goto skip_this;
dir.c-		}
dir.c-
--
dir.c-
dir.c-		ctx->pos = blknr_to_addr(i) + ofs;
dir.c-
dir.c:		if (unlikely(err))

err

dir.c-			break;
dir.c-		++i;
dir.c-		ofs = 0;

inode.c-
inode.c-	vi->datamode = __inode_data_mapping(advise);
inode.c-
inode.c:	if (unlikely(vi->datamode >= EROFS_INODE_LAYOUT_MAX)) {
inode.c-		errln("unsupported data mapping %u of nid %llu",
inode.c-		      vi->datamode, vi->nid);
inode.c-		DBG_BUGON(1);

err

--
inode.c-	if (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) {
inode.c-		char *lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
inode.c-
inode.c:		if (unlikely(!lnk))
inode.c-			return -ENOMEM;
inode.c-
inode.c-		m_pofs += vi->inode_isize + vi->xattr_isize;
inode.c-
inode.c-		/* inline symlink data shouldn't across page boundary as well */
inode.c:		if (unlikely(m_pofs + inode->i_size > PAGE_SIZE)) {
inode.c-			kfree(lnk);
inode.c-			errln("inline data cross block boundary @ nid %llu",
inode.c-			      vi->nid);

err

--
inode.c-{
inode.c-	struct inode *inode = erofs_iget_locked(sb, nid);
inode.c-
inode.c:	if (unlikely(!inode))
inode.c-		return ERR_PTR(-ENOMEM);

err

inode.c-
inode.c-	if (inode->i_state & I_NEW) {
--
inode.c-		vi->nid = nid;
inode.c-
inode.c-		err = fill_inode(inode, isdir);
inode.c:		if (likely(!err))
inode.c-			unlock_new_inode(inode);
inode.c-		else {

err

inode.c-			iget_failed(inode);

I will stop here.

Thanks,
Gao Xiang

> 
> Thanks,
> Gao Xiang
> 
> > 
> > regards,
> > dan carpenter
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
